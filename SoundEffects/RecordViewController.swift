//
//  RecordViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 5/28/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class RecordViewController: UIViewController, AVAudioRecorderDelegate, AVAudioPlayerDelegate {
    
    var soundRecorder: AVAudioRecorder!
    var soundPlayer:AVAudioPlayer!
    
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var statusLabel: UILabel!
    
    var meterTimer:NSTimer!
    var fileName: String?
    
    @IBAction func ActionCancel(segue:UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func SaveAction(sender: UIBarButtonItem) {
         dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playButton.enabled = false
        nameSetting()
    }
    
    @IBAction func recordSound(sender: UIButton) {
        if (sender.titleLabel?.text == "RECORD"){
            soundRecorder.record()
            sender.setTitle("STOP", forState: .Normal)
            playButton.enabled = false
            self.meterTimer = NSTimer.scheduledTimerWithTimeInterval(0.1,
                target:self,
                selector:"updateAudioMeter:",
                userInfo:nil,
                repeats:true)
        } else {
            soundRecorder.stop()
            sender.setTitle("RECORD", forState: .Normal)
        }
    }
    
    @IBAction func playSound(sender: UIButton) {
        if (sender.titleLabel?.text == "PLAY"){
            recordButton.enabled = false
            sender.setTitle("STOP", forState: .Normal)
            preparePlayer()
            soundPlayer.play()
        } else {
            soundPlayer.stop()
            sender.setTitle("PLAY", forState: .Normal)
        }
    }
    
    func nameSetting() {
        println("NAME SETTING")
        var alert = UIAlertController(title: "Save", message: "Edit you audio name", preferredStyle: UIAlertControllerStyle.Alert)
        
        alert.addAction(UIAlertAction(title: "Save", style: UIAlertActionStyle.Default, handler: { (action: UIAlertAction!) in
            let textField = alert.textFields![0] as! UITextField
            self.fileName = String(_cocoaString: textField) + ".m4a"
            self.setupRecorder()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (action: UIAlertAction!) in
            var format = NSDateFormatter()
            format.dateFormat="yyyy-MM-dd-HH-mm-ss"
            var currentFileName = "recording-\(format.stringFromDate(NSDate()))"
            println(currentFileName)
            self.fileName = currentFileName + ".m4a"
            self.setupRecorder()
        }))
        
        alert.addTextFieldWithConfigurationHandler({(textField: UITextField!) in
            //textField.placeholder = self.fileName
            textField.placeholder = "Type you audio name"
            textField.secureTextEntry = false
        })
        
        delay(0.5) {
           self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    // MARK:- AVRecorder Setup
    
    func setupRecorder() {
        
        var audioSession:AVAudioSession = AVAudioSession.sharedInstance()
        audioSession.setCategory(AVAudioSessionCategoryPlayAndRecord, error: nil)
        audioSession.setActive(true, error: nil)
        
        var recordSettings = [
            AVFormatIDKey: kAudioFormatAppleLossless,
            AVEncoderAudioQualityKey : AVAudioQuality.Max.rawValue,
            AVEncoderBitRateKey : 320000,
            AVNumberOfChannelsKey: 2,
            AVSampleRateKey : 44100.0
        ]
        
        var error: NSError?
        
        soundRecorder = AVAudioRecorder(URL: getFileURL(), settings: recordSettings as [NSObject : AnyObject], error: &error)
        
        if let err = error {
            println("AVAudioRecorder error: \(err.localizedDescription)")
        } else {
            soundRecorder.delegate = self
            soundRecorder.prepareToRecord()
        }
    }
    
    func updateAudioMeter(timer:NSTimer) {
        
        if soundRecorder.recording {
            let sec = Int(soundRecorder.currentTime % 60)
            statusLabel.text = String(sec)
            soundRecorder.updateMeters()
            
            println("This time is \(sec)")
            
            if sec == 10 {
                soundRecorder.stop()
                recordButton.setTitle("RECORD", forState: .Normal)
                println("This time is CLICK")
            }
        }
    }
    
    // MARK:- Prepare AVPlayer
    
    func preparePlayer() {
        var error: NSError?
        
        soundPlayer = AVAudioPlayer(contentsOfURL: getFileURL(), error: &error)
        
        if let err = error {
            println("AVAudioPlayer error: \(err.localizedDescription)")
        } else {
            soundPlayer.delegate = self
            soundPlayer.prepareToPlay()
            soundPlayer.volume = 1.0
        }
    }
    
    // MARK:- File URL
    
    func getCacheDirectory() -> String {
        
        let paths = NSSearchPathForDirectoriesInDomains(.CachesDirectory,.UserDomainMask, true) as! [String]
        
        return paths[0]
    }
    
    func getFileURL() -> NSURL {
        var documents: AnyObject = NSSearchPathForDirectoriesInDomains( NSSearchPathDirectory.DocumentDirectory,  NSSearchPathDomainMask.UserDomainMask, true)[0]
        var str =  documents.stringByAppendingPathComponent(fileName!)
        let filePath = NSURL(fileURLWithPath: str)
        println("The sound path is \(filePath)")
        return filePath!
    }
    
    // MARK:- AVAudioPlayer delegate methods
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        recordButton.enabled = true
        playButton.setTitle("PLAY", forState: .Normal)
    }
    
    func audioPlayerDecodeErrorDidOccur(player: AVAudioPlayer!, error: NSError!) {
        println("Error while playing audio \(error.localizedDescription)")
    }
    
    // MARK:- AVAudioRecorder delegate methods
    
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder!, successfully flag: Bool) {
        playButton.enabled = true
        recordButton.setTitle("RECORD", forState: .Normal)
    }
    
    func audioRecorderEncodeErrorDidOccur(recorder: AVAudioRecorder!, error: NSError!) {
        println("Error while recording audio \(error.localizedDescription)")
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    // MARK:- didReceiveMemoryWarning
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

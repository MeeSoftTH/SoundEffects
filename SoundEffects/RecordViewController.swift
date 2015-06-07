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
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    
    @IBAction func ActionCancel(segue:UIStoryboardSegue) {
    dismissViewControllerAnimated(true, completion: nil)
    }
    
    var soundRecorder: AVAudioRecorder!
    var soundPlayer:AVAudioPlayer!
    
    let fileName = "demo.caf"
    
    override func viewDidLoad() {
    super.viewDidLoad()
    setupRecorder()
    }
    
    
    
    @IBAction func recordSound(sender: UIButton) {
    if (sender.titleLabel?.text == "RECORD"){
    soundRecorder.record()
    sender.setTitle("STOP", forState: .Normal)
    playButton.enabled = false
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
    
    // MARK:- AVRecorder Setup
    
    func setupRecorder() {
    
    //set the settings for recorder
    
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
    
    let path =  getCacheDirectory().stringByAppendingPathComponent(fileName)
    let filePath = NSURL(fileURLWithPath: path)
    
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
    
    // MARK:- didReceiveMemoryWarning
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    }

}

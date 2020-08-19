//
//  ViewController.swift
//  Jia Ming_M_AudioApp
//
//  Created by Jia Ming Mei on 8/18/20.
//  Copyright © 2020 Jia Ming Mei. All rights reserved.
//

import UIKit

import AVFoundation

class ViewController: UIViewController {
        
var audioplayer = AVAudioPlayer()
        
    override func viewDidLoad() {
            super.viewDidLoad()
            
    let sound = Bundle.main.path(forResource: "Apex Legends Main Theme", ofType: "mp3")
            
            do{
                    
audioplayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            }catch{
                print(error)
            }
        }
    @IBAction func pauseAudio(_ sender: Any) {
    audioplayer.pause()
}
    @IBAction func playAudio(_ sender: Any) {
    audioplayer.play()
        }
    @IBAction func stopAudio(_ sender: Any) {
    audioplayer.stop()
        }
        
}


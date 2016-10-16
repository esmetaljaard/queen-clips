//
//  ViewController.swift
//  Queen Clips - The drag race sound board
//
//  Created by Esme Taljaard on 16/10/2016.
//  Copyright © 2016 Esme Taljaard. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    let soundFilenames = ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"]
    var audioPlayers = [AVAudioPlayer]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        for sound in soundFilenames {
            
            do{
                let url = URL(fileURLWithPath: Bundle.main.path(forResource: sound, ofType: "mp3")!)
                let audioPlayer = try AVAudioPlayer(contentsOf: url)
                
                audioPlayers.append(audioPlayer)
                
            }
                
            catch {
                self.audioPlayers.append(AVAudioPlayer())
                
            }
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
    
    let audioPlayer = audioPlayers[sender.tag]
    audioPlayer.play()
    }
}


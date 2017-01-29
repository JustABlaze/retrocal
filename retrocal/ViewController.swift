//
//  ViewController.swift
//  retrocal
//
//  Created by Mustafa Khalil on 1/28/17.
//  Copyright © 2017 Mustafa Khalil. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var buttonSound: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let path = Bundle.main.path(forResource: "btn", ofType: "wav")
        let soundUrl = URL(fileURLWithPath: path!)
        
        do{
            try buttonSound = AVAudioPlayer(contentsOf: soundUrl)
            buttonSound.prepareToPlay()
        }catch let err as NSError{
            print(err.debugDescription)
        }
        
    }

    //test git
    
    @IBAction func buttonPressed(sender: UIButton){
        playSound()
    }
    
    func playSound(){
        if buttonSound.isPlaying{
            buttonSound.stop()
        }
        buttonSound.play()
    }

}


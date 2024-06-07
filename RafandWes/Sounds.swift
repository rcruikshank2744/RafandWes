//
//  Sounds.swift
//  RafandWes
//
//  Created by Rafferty Cruikshank on 6/5/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = -1
            audioPlayer?.play()
            
            print("sound file played successfully")
        }
        catch {print("could not play sound")}
    }
}
func stopSound(sound: String, type: String) {
    
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.stop()
            
            print("sound file stopped successfully")
        } 
        catch {print("could not play stop sound")}
    }
}

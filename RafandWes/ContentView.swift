//
//  ContentView.swift
//  RafandWes
//
//  Created by Rafferty Cruikshank on 5/23/24.
//

import SwiftUI
import SwiftData
import AVFoundation


struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    @State var player: AVAudioPlayer?
    func chainsawPressed(){
        print("chainsaw pressed")
        self.playSound()
    }
    func playSound(){
        let url = Bundle.main.url(forResource: "chainsawOne", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
        
    }

    
    var body: some View {
        
        ZStack{
            Color.red
            .edgesIgnoringSafeArea(.all)
            Text("")
        }
        
        Button(action:{chainsawPressed()}) {
            Image("transparentChainsawTwo")
                .resizable()
                .frame(width: 300, height: 600)
                //.background(Color.red)
                .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
    
        }
            
        ZStack{Color.red.ignoresSafeArea()}
        
    }

}











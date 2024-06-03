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
        let url = Bundle.main.url(forResource: "chainsaw-92374", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }
    var body: some View {
        
    Button(action:{chainsawPressed()}) {
            Image("transparentChainsaw")
                .resizable()
                .frame(width: 400, height: 800)
                .background(Color.red)
    
        }
            

        ZStack{
            Color.red
                .ignoresSafeArea()
        }
        //VStack {
            //Image("transparentChainsaw")
                //.resizable()
                //.frame(width: 400, height: 800)
                //.background(Color.red)
            

        }
        //.padding()
    }
//}

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

    let impactFeedbackGenerator = UIImpactFeedbackGenerator(style: .medium)
    @State var longPressGesture = false
    let soundSelect = Int.random(in: 0..<5)

    var body: some View {
        ZStack{
            Button(action:{
                longPressGesture.toggle()
            }) {
                Image("transparentChainsaw")
                    .resizable()
                    .frame(width: 400, height: 800)
                    .background(Color.red)
            }
            .simultaneousGesture(LongPressGesture(minimumDuration: 0.1)
                .onEnded{ _ in
                    print("long press ended")
                    longPressGesture.toggle()
            })
            
            .onChange(of: longPressGesture, perform: {
                value in
                print(soundSelect)
                
                if(soundSelect == 0){
                    if longPressGesture {
                        playSound(sound: "chainsawOne", type: "wav")
                        print("chainsawOne")
                    }
                    else {stopSound(sound: "chainsawOne", type: "wav")}
                }
                
                else if(soundSelect == 1){
                    if longPressGesture {
                        playSound(sound: "chainsawTwo", type: "wav")
                        print("chainsawTwo")
                    }
                    else {stopSound(sound: "chainsawTwo", type: "wav")}
                }
                
                else if(soundSelect == 2){
                    if longPressGesture {
                        playSound(sound: "chainsawThree", type: "wav")
                        print("chainsawThree")
                    }
                    else {stopSound(sound: "chainsawThree", type: "wav")}
                }
                
                else if(soundSelect == 3){
                    if longPressGesture {
                        playSound(sound: "chainsawTypeBeatOne", type: "wav")
                        print("chainsawTypeBeatOne")
                    }
                    else {stopSound(sound: "chainsawTypeBeatOne", type: "wav")}
                }
                
                else if(soundSelect == 4){
                    if longPressGesture {
                        playSound(sound: "dogBark", type: "mp3")
                        print("dogBark")
                    }
                    else {stopSound(sound: "dogBark", type: "mp3")}
                }
                
                else{
                    print("no sound played")
                }
            
            })
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
}

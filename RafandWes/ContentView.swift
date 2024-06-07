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
    @State var longPressGesture = false
    let soundSelect = Int.random(in: 0..<2)

    var body: some View {
        
        ZStack {
            
            Button(action:{longPressGesture.toggle()}) {
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
                    if longPressGesture {playSound(sound: "chainsawOne", type: "wav")}
                    else {stopSound(sound: "chainsawOne", type: "wav")}
                }
                
                else if(soundSelect == 1){
                    if longPressGesture {playSound(sound: "chainsawTwo", type: "wav")}
                    else {stopSound(sound: "chainsawTwo", type: "wav")}
                }
                
                else{print("no sound played")}
                
            })
            
        }
        
    }
    
}

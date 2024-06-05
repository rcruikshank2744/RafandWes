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
                    .onChange(of: longPressGesture, perform:
                                {value in
                        if longPressGesture {
                            playSound(sound: "chainsawOne", type: "wav")
                        } else {
                            stopSound(sound: "chainsawOne", type: "wav")
                        }
                    })
        
        }

}











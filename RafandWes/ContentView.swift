//
//  ContentView.swift
//  RafandWes
//
//  Created by Rafferty Cruikshank on 5/23/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    func chainsawPressed(){
        print("chainsaw pressed")
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

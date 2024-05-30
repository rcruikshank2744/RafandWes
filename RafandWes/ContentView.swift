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
    
    var body: some View {

        ZStack{
            Color.red
                .ignoresSafeArea()
        }
        VStack {
            Image("transparentChainsaw")
                .resizable()
                .frame(width: 400, height: 800)
                .background(Color.red)
        }
        .padding()
    }
}

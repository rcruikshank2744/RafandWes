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
            Image("435-4354164_last-year-wiki-chainsaw-hd-png-download-Photoroom.png-Photoroom")
                .resizable()
                .frame(width: 500, height: 800)
                .background(Color.red)
        }
        .padding()
    }
}

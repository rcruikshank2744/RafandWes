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
        
        Image("435-4354164_last-year-wiki-chainsaw-hd-png-download-Photoroom.png-Photoroom")
        ZStack{
            Color.red
                .ignoresSafeArea()
            
        }
    }
}

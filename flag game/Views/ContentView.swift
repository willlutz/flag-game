//
//  ContentView.swift
//  flag game
//
//  Created by will lutz on 1/9/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var gameManager = GameManager ()
    var body: some View {
        NavigationView {
            VStack(spacing: 40, content: {
                VStack(spacing: 20, content: {
                    Text ("Country Flag Game")
                        .font (.title)
                        .fontWeight (.heavy)
                        .foregroundColor(.yellow)
                    Text ("Ready to test your skillz?")
                        .foregroundColor(.yellow)
                })
                NavigationLink {
                    question_view()
                    .environmentObject (gameManager)
                } label: {
                    custom_button (text: "Start")
                }
            }) . frame (maxWidth: .infinity, maxHeight: .infinity) .ignoresSafeArea (.all)
                .background(.cyan)
        }
    }
}

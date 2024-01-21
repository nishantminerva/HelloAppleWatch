//
//  ContentView.swift
//  HelloAppleWatch Watch App
//
//  Created by Nishant Minerva on 21/01/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var sentence = EmojiSentence()
    var body: some View {
        VStack {
            Image("Cookie")
                .resizable()
                .scaledToFit()
                .overlay(
                // 2
                  Text(sentence.emoji)
                    // 3
                    .font(.title3)
                    .padding(.top, 10)
                    .buttonStyle(.plain)
                )
            Text(sentence.text)
              .font(.caption)
              .padding(.top, 20)
        }
        .onTapGesture { sentence.next() }
//        .padding()
    }
}

#Preview {
    ContentView()
}

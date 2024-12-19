//
//  ContentView.swift
//  echolearn
//
//  Created by Michał Redkwa on 18/12/2024.
//

import SwiftUI
import featureNote

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [
                            Color.accent,
                            Color(UIColor.systemBackground),
                            Color.accent,
                        ]),
                        startPoint: .topLeading,
                        endPoint: .bottom
                    )
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 40.0).fill(
                        Color(UIColor.systemBackground)
                    ).padding(.horizontal, 15).padding(.top, 60).padding(
                        .bottom, 20).overlay(
                            VStack {
                                Text("Welcome to EchoLearn!")
                            }
                        )
                )
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}


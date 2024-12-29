//
//  ContentView.swift
//  echolearn
//
//  Created by Michał Redkwa on 18/12/2024.
//

import SwiftUI
import featureNote
import model

struct ContentView: View {
    @State private var notes = Note.mockedData
    @State private var contentSize: CGSize = .zero

    var body: some View {
        ZStack {
            // Apply gradient to the background
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.accent,
                    Color(UIColor.systemBackground),
                    Color.accent,
                ]),
                startPoint: .topLeading,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)

            // Foreground content
            RoundedRectangle(cornerRadius: 40)
                .fill(Color(UIColor.systemBackground))
                .overlay {
                    VStack {
                        if notes.isEmpty {
                            ContentUnavailableView(label: {
                                Label("No notes", systemImage: "doc.plaintext")
                                    .foregroundColor(Color.alter)
                            })
                        } else {
                            NotesScreen(notes: notes)
                                .padding()
                                .background(Color(UIColor.systemBackground))
                                .cornerRadius(40)
                        }
                    }

                }
                .padding(.horizontal, 15)
                .clipped()
        }
    }

}

#Preview {
    ContentView()
}

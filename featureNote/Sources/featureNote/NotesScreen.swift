//
//  NotesScreen.swift
//  featureNote
//
//  Created by Michał Redkwa on 22/12/2024.
//

import SwiftUI
import model

public struct NotesScreen: View {
    
    public let notes: [Note]
    
    public var body: some View {
        ScrollView{
            VStack {
                ForEach(notes, id: \.id){ note in
                    NoteRow(note: note, pinned: false)
                }
            }
        }.scrollClipDisabled()
    }
    
    public init(notes: [Note]) {
        self.notes = notes
    }
}

#Preview {
    NotesScreen(notes: Note.mockedData)
}

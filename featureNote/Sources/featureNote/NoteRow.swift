//
//  NoteRow.swift
//  featureNote
//
//  Created by Michał Redkwa on 19/12/2024.
//
import SwiftUI
import model

// TODO: add colors parameters to NoteRow

struct NoteRow: View {
    let note: Note
    let pinned: Bool
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(note.title)
                    .fontWeight(Font.Weight.bold)
                Spacer()
                Image(systemName: pinned ? "pin.fill" : "pin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 30)
                    .foregroundColor(pinned ? Color.black : Color.gray)
                    .shadow(color: Color.gray, radius: 100)
            }
            .padding(.horizontal)
            .padding(.top)
            Text(note.desc)
                .padding(.bottom)
                .padding(.horizontal)
                .lineLimit(1)
            Text("Last modified: \(formatDate(note.lastModified))")
                .foregroundColor(Color.gray)
                .font(.system(size: 14))
                .padding(.bottom)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 10).fill(Color.white).shadow(
                radius: 2)
        ).padding(.horizontal)
    }

    private func formatDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

#Preview {
    NoteRow(
        note: Note(
            title: "Some title",
            desc: "long description of note for this example note long description of note for this example note",
            lastModified: Date()), pinned: false)
}
#Preview {
    NoteRow(
        note: Note(
            title: "Some title",
            desc: "long description of note for this example note long description of note for this example note",
            lastModified: Date()), pinned: true)
}

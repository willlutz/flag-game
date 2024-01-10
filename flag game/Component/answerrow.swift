//
//  answer row.swift
//  flag game
//
//  Created by will lutz on 1/10/24.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    var body: some View {
        HStack (spacing: 20) {
            Image (systemName: "circle.fill")
                .font (.caption)
            Text(answer.text)
                .font (.title)
            if isSelected {
                Spacer()
                Image (systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? .green : .red)
            }
        }
        .padding () .frame (width: 300, alignment: .leading) .background(.white)
        .cornerRadius (10)
        .onTapGesture {
        isSelected = true
                .shadow(color: isSelected ? (answer.isCorrect ? .green : .red) : .gray, radius: 5, x: 0.5, y: 0.5)
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Test", isCorrect: true))
    }
}

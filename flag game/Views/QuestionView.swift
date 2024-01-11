//
//  question view.swift
//  flag game
//
//  Created by will lutz on 1/11/24.
//

import SwiftUI

struct question_view: View {
    var body: some View {
        VStack (spacing: 20) {
            HStack {
                Text ("Country Flag Quiz")
                    .foregroundColor (.yellow)
                    .fontWeight (.heavy)
                Spacer()
                    Text("1 out of 3")
                .foregroundColor(.yellow)
            }
            progressbar(progress: 50)
            VStack (spacing: 10) {
                Text ("Which country's flag is this?")
                Image ("Italy")
                    .resizable ()
                    .frame (width: 300, height: 200)
                AnswerRow(answer: Answer(text: "France", isCorrect: false))
                AnswerRow(answer: Answer(text: "Germany", isCorrect: false))
                AnswerRow(answer: Answer(text: "Italy", isCorrect: true))
                AnswerRow(answer: Answer(text: "England", isCorrect: false))
            }
            custom_button(text: "Next")
            Spacer ()
        }
        .padding()
        .background(.cyan)
    }
                }

struct Previews_QuestionView_Previews: PreviewProvider {
    static var previews: some View {
       question_view()
    }
}

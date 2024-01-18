//
//  question view.swift
//  flag game
//
//  Created by will lutz on 1/11/24.
//

import SwiftUI

struct question_view: View {
    @EnvironmentObject var gameManager: GameManager
    var body: some View {
        if gameManager.playingGame {
            VStack (spacing: 20) {
                HStack {
                    Text ("Country Flag Quiz")
                        .foregroundColor (.yellow)
                        .fontWeight (.heavy)
                    Spacer()
                    Text ("\(gameManager.index) out of \(gameManager.questions.count)")
                        .foregroundColor(.yellow)
                }
                progressbar(progress: gameManager.progress)
                VStack (spacing: 10) {
                    Text ("Which country's flag is this?")
                    Image (gameManager.country)
                        .resizable ()
                        .frame (width: 300, height: 200)
                    ForEach (gameManager.answerChoices) { answer in
                        AnswerRow(answer: answer)
                            .environmentObject (gameManager)
                    }
                }
                Button {
           
                gameManager.goToNextQuestion()
                } label: {
                    custom_button(text: "Next", background: gameManager.answerSelected ? .yellow : .gray)
                }
                .disabled(!gameManager.answerSelected)
                Spacer ()
            }
            .padding()
            .background(.cyan)
      
        }
        else {
            VStack(spacing: 20, content: {
                Text ("Country Flag Game")
                    .font (.title)
                Text ("Congratulations! You have completed the game.")
                Text ("You scored \(gameManager.score) out of \(gameManager.questions.count)")
                Button {
                    gameManager.reset()
                } label: {
                    custom_button(text: "Play Again")
                }
            })
                .foregroundColor (.yellow)
                .padding () .frame (maxWidth: .infinity, maxHeight: .infinity)
                .background (.cyan)
            }
    }
}
struct Previews_QuestionView_Previews: PreviewProvider {
    static var previews: some View {
       question_view()
    }
}

//
//  custom button.swift
//  flag game
//
//  Created by will lutz on 1/10/24.
//

import SwiftUI

struct custom_button: View {
    var text: String
    var background: Color = .yellow
    var body: some View {
               Text(text)
                   .foregroundColor(.cyan)
                   .padding()
                   .padding(.horizontal)
                   .background(background)
                   .cornerRadius(25)
                   .shadow(radius: 10)
           }
    }


struct custom_button_Previews: PreviewProvider {
    static var previews: some View {
        custom_button(text: "next")
    }
}

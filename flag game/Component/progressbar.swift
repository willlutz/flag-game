//
//  progressbar.swift
//  flag game
//
//  Created by will lutz on 1/10/24.
//

import SwiftUI

struct progressbar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(maxWidth: 350, maxHeight: 4)
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                    Rectangle()
                        .frame(width: progress, height: 4)
                        .foregroundColor(.yellow)
                        .cornerRadius(10)
                }

    }
}

struct progressbar_Previews: PreviewProvider {
    static var previews: some View {
        progressbar(progress: 50)
    }
}
//
//  Story.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

struct Story: View {
    var body: some View {
        VStack {
            Image("sir")
                .resizable()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
                .overlay(RoundedRectangle(cornerRadius: 35).stroke(.red, lineWidth: 2))
            Text("kamolov0828").font(.system(size: 13)).foregroundColor(.black)
        }
        .padding(.trailing)
        .frame(height: 100)
    }
}

struct Story_Previews: PreviewProvider {
    static var previews: some View {
        Story()
    }
}

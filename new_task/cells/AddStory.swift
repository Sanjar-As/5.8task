//
//  AddStory.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image("sir")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(35)
                Image("ic_add")
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            Text("mirzayev894").font(.system(size: 13)).foregroundColor(.black)
        }
        .padding(.trailing)
        .frame(height: 100)
    }
}

struct AddStory_Previews: PreviewProvider {
    static var previews: some View {
        AddStory()
    }
}

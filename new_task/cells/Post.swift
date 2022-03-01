//
//  Post.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

extension UIScreen {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
}

struct Post: View {
    var img = "post1"
    var body: some View {
        VStack(alignment: .leading) {
            //header
            HStack {
                Image("sir")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
                HStack {
                    Text("mirzayev894 ").font(.system(size: 14)).fontWeight(.bold).foregroundColor(.black)
                    Text("follow ·").font(.system(size: 14)).fontWeight(.bold).foregroundColor(.red)
                Spacer()
                Image(systemName: "tortoise.fill")
                }
            }
            
            //post image
            HStack {
                Image(img)
                    .resizable()
                    .padding(.leading, -20)
                    .padding(.trailing, -20)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.width / 2)
                Image(img)
                    .resizable()
                    .padding(.leading, -20)
                    .padding(.trailing, -20)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.width / 2)
            }
            
            //hor.bar
            HStack(alignment: .center) {
                Image("ic_like")
                Image("ic_comment")
                Image("ic_send")
                Spacer()
                Image("ic_collect")
            }
                .padding(.bottom, 5)
            
            //description
            Text("Liked by sanjar.as and 21.2K others")
                .font(.system(size: 13))
                .padding(.bottom, 3)
                .foregroundColor(.black)
            Text("You took a great picture!! Isn’t that an insatiable sight to behold? I don’t know why but I always like sunrise and sunset and it’s just beauty 💚💛.")
                .font(.system(size: 12))
                .padding(.bottom, 3)
                .foregroundColor(.init(white: 0.2))
                .lineLimit(2)
        }
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post()
    }
}

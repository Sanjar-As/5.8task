//
//  HomeView.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        AddStory()
                        Story()
                        Story()
                        Story()
                        Story()
                    }
                }
                    Post(img: "post4")
                    Post()
                    Post(img: "post2")
                    Post(img: "post3")
            }
                .listStyle(PlainListStyle())
            .navigationBarItems(leading: Image(systemName: "camera.fill"), trailing: Button(action: {
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Image(systemName: "moon.stars.fill")
            })).foregroundColor(.red)
            .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

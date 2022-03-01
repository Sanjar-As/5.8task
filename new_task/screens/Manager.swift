//
//  Manager.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

struct Manager: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    var body: some View {
        VStack {
            if self.status {
                HomeView()
            } else {
                SignInView()
            }
        }
            .onAppear {
                let forName = NSNotification.Name("status")
                NotificationCenter.default.addObserver(forName: forName, object: nil, queue: .main) { (_) in
                    print("Call NotificationCenter")
                    self.status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                }
        }
    }
}

struct Manager_Previews: PreviewProvider {
    static var previews: some View {
        Manager()
    }
}

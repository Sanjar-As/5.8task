//
//  SignInView.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

struct SignInView: View {
    
    @State var isOpened = false
    @State var id = ""
    @State var pswd = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            Image("user")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .cornerRadius(45)
            TextField("User ID", text: $id)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            SecureField("User PW", text: $pswd)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            
            Button(action: {
                UserDefaults.standard.set(true, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
            }, label: {
                Spacer()
                Text("Sign In")
                Spacer()
            })
                .padding()
                .frame(height: 50)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(30)

            Spacer()
            HStack {
                Text("Don't have an account ?")
                Button(action: {
                    isOpened.toggle()
                }, label: {
                    Text("SignUp")
                })
                    .sheet(isPresented: $isOpened, content: {
                        SignUpView()
                    })
                    .font(.system(size: 18))
            }
        }
        .padding()
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}

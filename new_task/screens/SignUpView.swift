//
//  SignUpView.swift
//  new_task
//
//  Created by Sanjar Aslonov on 28/02/22.
//

import SwiftUI

struct SignUpView: View {
    
    @Environment(\.presentationMode) var presentation
    @State var fname = ""
    @State var lname = ""
    @State var email = ""
    @State var addr = ""
    @State var pswd = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Spacer()
            TextField("Firstname", text: $fname)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            TextField("Lastname", text: $lname)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            TextField("Email", text: $email)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            TextField("Address", text: $addr)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            SecureField("Password", text: $pswd)
                .padding(.leading)
                .frame(height: 50)
                .background(.gray.opacity(0.1))
                .cornerRadius(30)
            
            Button(action: {
                presentation.wrappedValue.dismiss()
            }, label: {
                Spacer()
                Text("Sign Up")
                Spacer()
            })
                .padding()
                .frame(height: 50)
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(30)

            Spacer()
            HStack {
                Text("Already have an account ?")
                Button(action: {
                    presentation.wrappedValue.dismiss()
                }, label: {
                    Text("SignIn")
                })
                    .font(.system(size: 18))
            }
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

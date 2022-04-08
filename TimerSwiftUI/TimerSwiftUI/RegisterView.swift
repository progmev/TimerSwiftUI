//
//  RegisterView.swift
//  TimerSwiftUI
//
//  Created by Martynov Evgeny on 5.04.22.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var user: UserManager
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .padding(.bottom)
                .multilineTextAlignment(.center)
                .padding()
            Button(action: registerUser) {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }.padding()
        }
        .padding()
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

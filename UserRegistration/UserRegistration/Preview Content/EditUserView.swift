//
//  EditUserView.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//

import SwiftUI

struct EditUserView: View {
    
    @Environment (\.managedObjectContext) var managedObjectContext
    @Environment(\.dismiss) var dismiss
    
    @State var name : String = ""
    @State var lastname : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    @Binding var isAddView : Bool
    
    var user: FetchedResults<User>.Element
    
    var body: some View {
        Form{
            Section{
                
                TextField("Username", text : $name)
                    .padding()
                VStack{
                    TextField("Lastname", text : $lastname)
                    VStack{
                        TextField("Email", text : $email)
                    } .padding()
                    VStack{
                        SecureField("Password", text : $password)
                    } .padding()
                }
                .onAppear(){
                    
                    if let name = user.name{
                        self.name = name
                    }
                    if let lastname = user.lastname{
                        self.lastname = lastname
                    }
                    if let email = user.email{
                        self.email = email
                    }
                    if let password = user.password{
                        self.password = password
                    }
                } //onappear
                
                HStack{
                    Button("Edit"){
                        DataController().editUser(userOld: user, name: self.name, lastname: self.lastname, email: self.email, password: self.password, context: managedObjectContext )

                        dismiss()
                    }
                }
            } //section
        } //form
    }
}
//
//struct EditUserView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditUserView()
//    }
//}

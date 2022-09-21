//
//  AddUserView.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//

import SwiftUI

struct AddUserView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    
    @State var name : String = ""
    @State var lastname : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    @Binding var isAddView : Bool
    
    
    var body: some View {
        
        Form{
            Section{
                    
                VStack{
                    TextField("Username", text : $name)
                        .padding()
                    TextField("Lastname", text : $lastname)
                        .padding()
                    TextField("Email", text : $email)
                        .padding()
                    SecureField("Password", text : $password)
                        .padding()
                }
                
                HStack{
                    Button("OK"){
                        DataController().addUser(name: self.name, lastname: self.lastname, email: self.email, password: self.password, context: managedObjectContext)
                        
                        isAddView = false
                    }
                }
            }
        }
    }
}
            
            //struct AddUserView_Previews: PreviewProvider {
            //    static var previews: some View {
            //        AddUserView()
            //    }
            //}

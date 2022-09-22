//
//  AddUserView.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//

import SwiftUI

struct AddUserView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.dismiss) var dismiss
    
    @State var name : String = ""
    @State var lastname : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    @Binding var isAddView : Bool
    @State var isShowSucess : Bool = false
    
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
                    Button(){
                        DataController().addUser(name: self.name, lastname: self.lastname, email: self.email, password: self.password, context: managedObjectContext)
                        isShowSucess = true
                        // isAddView = false
                    } label:
                        { Label ("Cadastrar", systemImage: "person")
                        }
                    .alert("Cadastro efetuado com sucesso" , isPresented: $isShowSucess, actions: {
                        Button("OK", role: .cancel){
                            
                            isShowSucess = false
                            dismiss()
                        } //button
                        
                    }) //alert
                    
                } //HStack
            } //section
        } //form
    } //body
}
            
            //struct AddUserView_Previews: PreviewProvider {
            //    static var previews: some View {
            //        AddUserView()
            //    }
            //}

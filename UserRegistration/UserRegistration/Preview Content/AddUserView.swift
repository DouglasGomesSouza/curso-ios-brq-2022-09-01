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
    @State var isShowSucess : Bool = false
    
    
    var body: some View {
        
        Form{
            Section{
                TextField("Username", text : $name)
                
                VStack{
                    TextField("Lastname", text : $lastname)
                    VStack{
                        TextField("Email", text : $email)
                    } .padding()
                    VStack{
                        TextField("Password", text : $password)
                    } .padding()
                } //VStack
                HStack{
                    Button("OK"){
                        DataController().addUser(name: self.name, lastname: self.lastname, email: self.email, password: self.password, context: managedObjectContext)
                        
                        isShowSucess = true
                    }
                            .sheet(isPresented: $isShowSucess, content :{
                                SucessView(isShowSucess: $isShowSucess)
                            })
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

//
//  ContentView.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @Environment (\.managedObjectContext) var managedObjectContext
    
    @FetchRequest (sortDescriptors: [SortDescriptor(\.name)]) var user : FetchedResults<User>
    
    @State var isAddView : Bool = false

    
    @State var userName : String = ""
    @State var userLastname : String = ""
    @State var userEmail : String = ""
    @State var userPassword : String = ""
    var userDate : Date = Date()
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                List{
                    
                    ForEach(user) { userElement in
                        NavigationLink(destination: EditUserView(isAddView : $isAddView, user: userElement)) {
                            
                            HStack{
                                
                                VStack(alignment: .leading, spacing: 8){
                                    Text(userElement.name ?? "")
                                        .bold()
                                    
                                    Text(userElement.email ?? "") .foregroundColor(.gray)
                                    
                                    
                                } //Vtack
                                
                            Spacer()
                                
                            Text( calcDate(date: userDate) )
                                
                            } //HStack
                        } //navigationlink
                    } //foreach
                    .onDelete(perform: deleteUser)
                }//list
                .navigationTitle( "Usuarios Cadastrados" )
                
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            isAddView = true
                        } label: {
                            Label("Add Label", systemImage: "plus.circle")
                            }
                    }
                } //toolbar
                .sheet(isPresented: $isAddView, content: {
                    AddUserView(isAddView: $isAddView)
                })
                
            }//VStack
        }//navigationView
    } //body
        func deleteUser(offset:IndexSet) {
           DataController().deleteUser(offsets: offset, context: managedObjectContext, user: user)
        }
}

func calcDate (date :Date) -> String {
            
        return date.formatted()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

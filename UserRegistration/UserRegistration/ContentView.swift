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
    @FetchRequest (sortDescriptors: [SortDescriptor(\.name, order: .reverse)]) var user : FetchedResults<User>
    @State var isAddView : Bool
    
    var body: some View {
        
        NavigationView{
            VStack {
                
                List{
                    
                    ForEach(user) { userElement in
                        NavigationLink(destination: EditUserView(isAddView : $isAddView, user: userElement)) {
                            
                            HStack{
                                
                                Text("Usuarios")
                            }//HStack
                            
                        }//navigationlink
                    }//foreach
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
            }//VStack
        }//navigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isAddView: true)
    }
}

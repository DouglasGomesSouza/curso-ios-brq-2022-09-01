//
//  DataController.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//
import Foundation
import CoreData
import SwiftUI

class DataController : ObservableObject {
    
    let container = NSPersistentContainer(name: "User")
    init(){
        
        container.loadPersistentStores { description, error in
            if let errorIf = error {
                print ("Erro ao carregar dados \(errorIf)")
            }
        }
    }
    
    func save(context: NSManagedObjectContext){
        do{
            try context.save()
        }
        catch {
            print("Erro ao salvar os dados no contexto \(error)")
        }
    }
    
    
    func addUser (name: String, lastname: String, email: String, password: String, context: NSManagedObjectContext){
        
        let user = User(context: context)
        
        user.name = name
        user.lastname = lastname
        user.email = email
        user.password = password
        user.id = UUID()
        user.date = Date()
        
        save(context: context)
    }
    
    func editUser (userOld: User, name: String, lastname: String, email: String, password: String, context: NSManagedObjectContext){
        
        userOld.name = name
        userOld.lastname = lastname
        userOld.email = email
        userOld.password = password
        userOld.date = Date()
        
        save(context: context)
    }
    
    func deleteUser (offsets: IndexSet, context: NSManagedObjectContext, user: FetchedResults<User>){
        
        offsets.map{ user[$0] }
            .forEach( context.delete )
        
        save(context: context)
    }
}

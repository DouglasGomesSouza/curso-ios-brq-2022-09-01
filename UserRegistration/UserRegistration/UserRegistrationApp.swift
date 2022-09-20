//
//  UserRegistrationApp.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//

import SwiftUI

@main
struct UserRegistrationApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
            WindowGroup {
                ContentView()
                    .environment(\.managedObjectContext, dataController.container.viewContext)
            }
        }
    }

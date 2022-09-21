//
//  ContentView.swift
//  ProfessoresCRUD
//
//  Created by user221889 on 9/21/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button("Add"){
                            ViewModel().createProfessor(nome: "Fabrizio V", email: "TTT7")
                        }
            Button("Update"){
                ViewModel().updateProfessores(id: 620, nome: "TTTT", email: "gggggg")
            }
            
            Button("Delete"){
                ViewModel().deleteProfessores(id: 630)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

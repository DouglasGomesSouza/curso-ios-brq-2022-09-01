//
//  EditProfView.swift
//  ProfessoresCRUD
//
//  Created by user221889 on 9/22/22.
//

import SwiftUI

struct EditProfView: View {
    
    @EnvironmentObject var viewModel : ViewModel
    @Environment(\.dismiss) var dismiss
    
    @State var nome: String = ""
    @State var email: String = ""
    
    var body: some View {
        Form{
            Section{
                TextField("Nome", text: $nome )
                TextField("Email", text: $email )
                
                    .onAppear(){
                        if let nome = {
                            self.nome =
                        }
                        if let email = {
                            
                        }
                    } //onappear
                HStack{
                    Button("Edit"){
                        ViewModel.updateProfessores()
                        
                        dismiss()
                    } //button
                } //hStack
            } //section
        } //form
    } //body
}

struct EditProfView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfView()
    }
}

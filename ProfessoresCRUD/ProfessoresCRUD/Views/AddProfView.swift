//
//  AddProfView.swift
//  ProfessoresCRUD
//
//  Created by user221889 on 9/22/22.
//

import SwiftUI

struct AddProfView: View {
    
    @EnvironmentObject var viewModel : ViewModel
    
    @Environment (\.dismiss) var dismiss
    
    @State var nome: String = ""
    @State var email: String = ""
    
    var body: some View {
        
        Form{
            Section{
                VStack{
                    
                    Text("Nome")
                    TextField("Nome", text: $nome )
                
                }
                VStack{
                    
                    Text("Email")
                    TextField("Email", text: $email )
                
                }
                
                HStack{
                    
                    Spacer()
                    Button("Salvar") {
                        
                        viewModel.createProfessor(nome: nome, email: email)
                        
                        dismiss()
                    }
                }
            } //section
        } //form
    }
}

struct AddProfView_Previews: PreviewProvider {
    static var previews: some View {
        AddProfView()
    }
}

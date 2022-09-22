//
//  AddProfView.swift
//  ProfessoresCRUD
//
//  Created by user221889 on 9/22/22.
//

import SwiftUI

struct AddProfView: View {
    
    @EnvironmentObject var viewModel : ViewModel
    
    @Binding var isAddView : Bool
    
    @State var nome: String = ""
    @State var email: String = ""
    
    var body: some View {
        
        Form{
            Section{
                TextField("Nome", text: $nome )
                TextField("Email", text: $email )
                
                HStack{
                    Button("Create") {
                        
                        isAddView = false
                        ViewModel.createProfessor()
                    }
                }
            } //section
        } //form
    }
}

//struct AddProfView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddProfView()
//    }
//}

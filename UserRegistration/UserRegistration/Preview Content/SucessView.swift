//
//  SucessView.swift
//  UserRegistration
//
//  Created by user221889 on 9/20/22.
//

import SwiftUI

struct SucessView: View {
    
    @Binding var isShowSucess : Bool
    var body: some View {
        Text("Cadastro efetuado com sucesso!!")
        
        Button("Fechar", role: .cancel){
                    
                    isShowSucess = false
                    
                }
    }
}

//struct SucessView_Previews: PreviewProvider {
//    static var previews: some View {
//        SucessView()
//    }
//}

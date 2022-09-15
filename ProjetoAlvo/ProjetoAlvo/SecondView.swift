//
//  SecondView.swift
//  ProjetoAlvo
//
//  Created by user221889 on 9/12/22.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var isShowSecondScreen : Bool
    
    var body: some View {
        Text("Hello, World!")
        
        
        Button("Fechar", role: .cancel){
            
            isShowSecondScreen = false
            
        }
    }
    
    
}

//struct SecondView_Previews: PreviewProvider {
//    static var previews: some View {
//        SecondView()
//    }
//}

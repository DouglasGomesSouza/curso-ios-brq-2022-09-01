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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
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

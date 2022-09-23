//
//  HelpFormView.swift
//  ProfessoresCRUD
//
//  Created by user221889 on 9/23/22.
//

import Foundation
import SwiftUI

struct TextFormView : View {
    
    var text : String = ""
    
    var body: some View {
        
        Text (text)
            .font(.system(size: 20))
    }
}

//
//  EditUserView.swift
//  UserRegistration
//
//  Created by user221889 on 9/19/22.
//

import SwiftUI

struct EditUserView: View {
    
    @Environment (\.managedObjectContext) var managedObjectContext
    
    @State var name : String = ""
    @State var lastname : String = ""
    @State var email : String = ""
    @State var password : String = ""
    
    @Binding var isAddView : Bool
    
    var user: FetchedResults<User>.Element
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
//
//struct EditUserView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditUserView()
//    }
//}

import SwiftUI

struct EditProfView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel : ViewModel
    
    @State var nome : String = ""
    @State var email : String = ""
    
    // vai receber o objeto a ser alterado
    @State var professor : ProfessorModel
    
    var body: some View {
        
        Form{
            Section {
                
                VStack(alignment: .leading){
                    Spacer()
                    TextFormView(text: "Nome")
                    TextField("Nome", text: $nome)
                } .padding() // VStack
                
                VStack(alignment: .leading){
                    Spacer()
                    Text("Email")
                    TextField("Email", text: $email)
                } .padding() // VStack
                
                HStack{
                    Spacer()
                    Button("Editar"){
                        
                        viewModel.updateProfessores(id: professor.id, nome: nome, email: email)
                        
                        // para fechar o modal
                        dismiss()
                    } // Button
                }//HStack
                .onAppear(perform: {
                    self.nome = professor.nome
                    self.email = professor.email
                })

            } // Section
        } // Form
    }
}

//struct EditProfView_Previews: PreviewProvider {
//    static var previews: some View {
//        EditProfView()
//    }
//}

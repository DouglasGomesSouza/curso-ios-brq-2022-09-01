import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView{
            VStack{
//                ZStack{
//
//                    Circle()
//                        .frame(width: 150, height: 150)
//                        .foregroundColor(.red)
//
//
//                    Text("1")
//                        .foregroundColor(.white)
//                        .font(.system(size: 70, weight: .bold))
//                }
                
                CircleView(color: .red, text: "1")
                
                NavigationLink(destination: BlueCircleView(), label: {
//                    Text("Próxima Página")
//                        .frame(width: 200, height: 50)
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(30)
                    
                    NavigationText(color: .blue, text: "Próxima Página")
                })
                
                HomeView()
            }
        }
        
        
    }
}

struct HomeView : View{
    
    var body: some View{
        
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        HStack{
            Button("Login" , action: {})
                .frame(width: 90, height: 40)
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(20)
            
            Button( action: {}, label: {
                Label("Esqueci Minha Senha", systemImage: "doc.circle")
            })
                .frame(width: 220, height: 40)
                .background(.gray)
                .foregroundColor(.white)
                .cornerRadius(20)
                
        }
        .padding()
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

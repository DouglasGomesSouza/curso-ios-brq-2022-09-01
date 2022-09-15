import SwiftUI

struct BlueCircleView: View {
    var body: some View {
        
            VStack{
                
//                ZStack{
//
//                    Circle()
//                        .frame(width: 150, height: 150)
//                        .foregroundColor(.blue)
//
//                    Text("2")
//                        .foregroundColor(.white)
//                        .font(.system(size: 70, weight: .bold))
//                }
                
                CircleView(color: .blue, text: "2")
                
                NavigationLink(destination: GreenCircleView(), label: {
//                    Text("Próxima Página")
//                        .frame(width: 200, height: 50)
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(30)
                    
                    NavigationText(color: .blue, text: "Próxima Página")
                })
            }
        

        
    }
}

struct BlueCircleView_Previews: PreviewProvider {
    static var previews: some View {
        BlueCircleView()
    }
}

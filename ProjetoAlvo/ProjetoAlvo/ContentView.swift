import SwiftUI

struct ContentView: View {
    
//    @State var target : Int = Int.random(in: 1...100)
//    @State var points : Int = 0
//    @State var pointsDifference : Int = 0
    
//    @State var sliderNumber : Double = 50.0
    @State var game : Game  = Game()
    
    @State var isAlertVisible :Bool = false
    
    @State var slideValue : Double = 50.0
    
    @State var isShowSecondScreen : Bool = false
    
    var body: some View {
        
        VStack{
            VStack{
                if game.points > 0 {
                    Text("Points \(game.points)").opacity(0.5)
                }
//                Text("Diff \(game.pointsDifference)")
//                Text("Acerte um número")
                StructView(text: "Hello")
                AcerteNumText(color : .black, text : "Diff \(game.pointsDifference)")
                AcerteNumText(color : Color("anycolor"), text : "Acerte um numero")
            }
            
            VStack{
                Text("\(game.target)")
            }
            
            SliderView(sliderNumber: $slideValue)
            
//            HStack{
//                Text("1")
//                Slider(value: $sliderNumber, in: 1...100)
//                Text("100")
//            }
            HStack {
//                Button("Acertei") {
//
//                    print("Cliquei no botão \(Int(slideValue))")
//                    game.sliderNumberGame = slideValue
//                    game.calcPoints()
//                    game.newRound()
//
//
//
//                    isAlertVisible = true
//
//                }
                ButtonView(game: $game, slideValue: $slideValue, isAlertVisible: $isAlertVisible)
                
                Button ("Info") {
                    isShowSecondScreen = true
                }
                .sheet(isPresented: $isShowSecondScreen, content: {
                    SecondView(isShowSecondScreen: $isShowSecondScreen)
                })
            }
            
            
            .alert( "Titulo do Alerta", isPresented: $isAlertVisible, actions: {
//                Button("Sim", role: .cancel){
//
//                    isAlertVisible = false
//                }
                AlertView(isAlertVisible: $isAlertVisible)
                          
            } , message: {

                Text(game.getMessage())

            } )
        }
}
    
struct SliderView : View{
        
        @Binding var sliderNumber : Double
        
        var body : some View{
            HStack{
                Text("1")
                Slider(value: $sliderNumber, in: 1...100)
                Text("100")
            }
        }
}
    
struct AlertView : View {
    
        @Binding var isAlertVisible : Bool
    
        var body: some View {
            
                Button("Sim", role: .cancel){
                    
                    isAlertVisible = false
                }
        }
}
    
struct ButtonView : View {
    
    @Binding var game : Game
    @Binding var slideValue : Double
    @Binding var isAlertVisible : Bool
    
    var body: some View{
        Button("Acertei") {
            
            print("Cliquei no botão \(Int(slideValue))")
            game.sliderNumberGame = slideValue
            game.calcPoints()
            game.newRound()
            

            
            isAlertVisible = true
            
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

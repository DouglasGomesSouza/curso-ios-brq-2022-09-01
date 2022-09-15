import Foundation

class Game{
    
    var target : Int = Int.random(in: 1...100)
    var points : Int = 0
    var pointsDifference : Int = 0
    
    var sliderNumberGame : Double = 50.0
    
    
    func calcPoints(){
        pointsDifference = abs(target - Int(sliderNumberGame))
        points += pointsDifference
        print("Pontuação \(points)")
    }
    
    func newRound(){
        target = Int.random(in: 1...100)
    }
    
    func getPoints() -> Int {
        return points
    }
    func getMessage() -> String {
        if pointsDifference == 0 {
            return "Voce acertou!!!"
        }
        else {
            return "Os pontos do usuário \n são \(points)"
        }
    }
}

import Foundation
import CoreData

/**
 
 Data Controller vai ser uma classe que vai agrupar as funções
 que vai permitir manipular os dados:
 
 save() - permite salvar os dados no banco de dados do CoreData
 update() - permite alterar os dados no banco de dados do CoreData
 
 CRUD : Create, Read ( Ler tudo ou ler apenas um registro ), Update, Delete
 
 Um contexto no Core Data está relacionado a quais entidades o mesmo pode gerenciar : fazer CRUD das mesmas
 
 try catch é um mecanismo que permite  'tentar fazer algo' com possibilidade de
 tratamos este erro sem que o aplicativo pare

 */

class DataController {

    func save(context: NSManagedObjectContext){
        do{
            // try - catch
            try context.save()
        }
        catch {
            let error = error as NSError
            print("Erro ao salvar os dados no contexto \(error)")
        }
    }
    
    /**
            UUID , name, date, calories
     */
    func addFood(name: String, calories: Double, context : NSManagedObjectContext){
        
        let food = Food(context: context)
        
        food.name = name
        food.calories = calories
        food.id = UUID()
        food.date = Date()
        
        // TODO: Criar função salvar o dados no context
        save(context: context)
    }
    

    func editFood(){
        
    }
    
}

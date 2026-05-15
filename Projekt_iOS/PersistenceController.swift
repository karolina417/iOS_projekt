import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init() {
        container = NSPersistentContainer(name: "Projekt_iOS")
        container.loadPersistentStores { _, error in
            if let error = error {
                fatalError("Core Data error: \(error)")
            }
        }
        DaneStartowe.zaladuj(context: container.viewContext)
    }
    
    var context: NSManagedObjectContext {
        container.viewContext
    }
}

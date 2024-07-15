import UIKit
import FirebaseDatabase

class DatabaseDataLayer: NSObject {
    
    func loadImageUrls(completion: @escaping ([String?]) -> ()) {
        
        let ref = Database.database().reference(withPath: "imageUrls")
        ref.queryOrderedByKey().observe(.value) { (snapshot) in
            var urls = [String]()
            for child in snapshot.children.reversed() { // 反转顺序
                if let child = child as? DataSnapshot {
                    urls.append(child.value as! String)
                }
            }
            completion(urls)
        }
    }
    
    func loadQuotes(completion: @escaping ([String]) -> ()) {
        
        let ref = Database.database().reference(withPath: "quotes")
        ref.observe(.value) { (snapshot) in
            var quotes = [String]()
            for child in snapshot.children {
                if let child = child as? DataSnapshot {
                    quotes.append((child.value as? String) ?? "")
                }
            }
            completion(quotes)
        }
    }

}

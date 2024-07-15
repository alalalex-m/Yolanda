import UIKit
import FirebaseStorage

class ImageDataLayer: NSObject {
    
    func loadImage(from url: String, completion: @escaping (UIImage?) -> ()) {
        if url == "" {
            return
        }
//        print("Loading image from URL: \(url)") // 添加这行进行日志记录
        let photoRef = Storage.storage().reference(forURL: url)
        photoRef.getData(maxSize: 1024 * 1024 * 1024) { (data, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            } else {
                let image = UIImage(data: data!)
                completion(image)
            }
        }
    }

}

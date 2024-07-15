import UIKit

class ParentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func generateHeaderView(_ title: String) -> UIView {
        let headerView = UIView()
        headerView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        let label = UILabel(frame: CGRect(x: view.frame.midX - 100, y: 16, width: 200, height: 40))
        label.text = title
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 20)
        headerView.addSubview(label)
        return headerView
    }
    

}

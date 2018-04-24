import UIKit
import demo2Pod

class ViewController: UIViewController {

    lazy var image : UIImage = {
        let image = UIImage.bundledImage(named:"docusign_icon")
        return image!
    }()
    
    lazy var docusignImageView : UIImageView = {
        let imageView = UIImageView.init(image: self.image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = UIColor.clear
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.babyColor
        
        view.addSubview(docusignImageView)
        docusignImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        docusignImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        docusignImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        docusignImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
}


import UIKit
import demo2Pod

class ViewController: UIViewController {

    

    lazy var image : UIImage = {

        /*
        let docsPath = Bundle.main.resourcePath!
        let fileManager = FileManager.default

        do {
            let docsArray = try fileManager.contentsOfDirectory(atPath: docsPath)
        } catch {
            print(error)
        }
         */

        
        //let pathOfExampleProjectImage = Bundle.main.path(forResource: "test_icon", ofType: nil)


//        let frameworkBundle = Bundle(for: ViewController.self)
//        let bundleURL = frameworkBundle.resourceURL?.appendingPathComponent("test2Pod.bundle")
//
//        let resourceBundle = Bundle(url: bundleURL!)
//        let image = UIImage(named:"icImportPhoto", in:resourceBundle, compatibleWith:nil)

 
        
        /*
        let lol = Bundle(identifier: "hello")
        let image = UIImage(named: "docusign_icon", in:resourceBundle, compatibleWith:nil)
        */

        //let image = UIImage(named:"icImportPhoto")
        
        //let bundlePath = Bundle.main.path(forResource: "Assets", ofType: "bundle")
        //let bundle = Bundle(path: bundlePath!)
        
        //let image = UIImage(named:"icImportPhoto", in:bundle, compatibleWith:nil)
        
        let image = UIColor.bundledImage(named:"docusign_icon")
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
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor.babyColor
        
        
        view.addSubview(docusignImageView)
        docusignImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        docusignImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        docusignImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        docusignImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
}


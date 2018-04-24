import UIKit

extension UIImage {
    
    public class func bundledImage(named: String) -> UIImage? {
        let image = UIImage(named: named)
        if image == nil {
            let podBundle = Bundle(for: OliveUI.classForCoder())
            let url = podBundle.url(forResource: "Assets", withExtension: "bundle")
            let imageBundle = Bundle(url: url!)
            return UIImage(named: named, in:imageBundle, compatibleWith: nil)
        }
        return image
    }
    
}

class OliveUI: NSObject {
    
}


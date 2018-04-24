import UIKit

extension UIImage {
    
    public class func bundledImage(named: String) -> UIImage? {
        let image = UIImage(named: named)
        if image == nil {
            let podBundle = Bundle(for: Olive.classForCoder())
            let url = podBundle.url(forResource: "Assets", withExtension: "bundle")
            if let url = url {
                let imageBundle = Bundle(url: url)
                return UIImage(named: named, in:imageBundle, compatibleWith: nil)
            }
        }
        return image
    }
    
}

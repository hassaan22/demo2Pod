
import UIKit

extension UIColor {
    
    public class var babyColor : UIColor {
        return UIColor(red: 100.0/255.0, green: 200.0/255.0, blue: 50.0/255.0, alpha: 1.0);
    }
    
    public class var babyImage : UIImage {
        let bundleURL = Bundle.main.path(forResource: "Assets", ofType: "bundle")
        let imageBundle = Bundle(url:bundleURL!)
        
        let path = imageBundle?.path(forResource: "icImportPhoto", ofType: "png")
        
        return UIImage(contentsOfFile:path!)!
        
    }
    
    public class func bundledImage(named: String) -> UIImage? {
        let image = UIImage(named: named)
        if image == nil {
//            return UIImage(named: named, in:Bundle(for: OliveUI.classForCoder()), compatibleWith: nil)
            return UIImage(named: named, in:Bundle.main, compatibleWith: nil)

        } // Replace MyBasePodClass with yours
        return image
    }
    
}


class OliveUI: NSObject {
    
}

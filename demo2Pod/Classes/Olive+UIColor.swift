
import UIKit

extension UIColor {
    
    public class var babyColor : UIColor {
        return UIColor(red: 100.0/255.0, green: 200.0/255.0, blue: 50.0/255.0, alpha: 1.0);
    }
    
    public class var babyImage : UIImage {
        let bundle = Bundle(for: self.classForCoder())
        let urlbaby = bundle.url(forResource: "Assets", withExtension: "bundle")
        let imageBundle = Bundle(url:urlbaby!)
        
        let path = imageBundle?.path(forResource: "icImportPhoto", ofType: "png")
        
        return UIImage(contentsOfFile:path!)!
        
    }
    
    public class func bundledImage(named: String) -> UIImage? {
        let image = UIImage(named: named)
        if image == nil {
            return UIImage(named: named, in:Bundle(for: OliveUI.classForCoder()), compatibleWith: nil)
        } // Replace MyBasePodClass with yours
        return image
    }
    
}


class OliveUI: NSObject {
    
}

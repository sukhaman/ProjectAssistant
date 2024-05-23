//
//  Copyright © 2023 Sukhaman. All rights reserved.
//

import Foundation
import UIKit
import PDFKit



extension String {
    
    
      public func format(with mask: String, phone: String) -> String {
            let numbers = phone.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
            var result = ""
            var index = numbers.startIndex // numbers iterator

            // iterate over the mask characters until the iterator of numbers ends
            for ch in mask where index < numbers.endIndex {
                if ch == "X" {
                    // mask requires a number in this place, so take the next one
                    result.append(numbers[index])

                    // move numbers iterator to the next index
                    index = numbers.index(after: index)

                } else {
                    result.append(ch) // just append a mask character
                }
            }
            return result
        }
    
       public var isNumber: Bool {
            let digitsCharacters = CharacterSet(charactersIn: "0123456789")
            return CharacterSet(charactersIn: self).isSubset(of: digitsCharacters)
        }
    
    
    public func attributedStringWithColor(_ strings: [String], color: UIColor, characterSpacing: UInt? = nil) -> NSAttributedString {
            let attributedString = NSMutableAttributedString(string: self)
            for string in strings {
                let range = (self as NSString).range(of: string)
                attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
            }

            guard let characterSpacing = characterSpacing else {return attributedString}

            attributedString.addAttribute(NSAttributedString.Key.kern, value: characterSpacing, range: NSRange(location: 0, length: attributedString.length))

            return attributedString
        }
    
    var length: Int {
        get {
            return self.count
        }
    }
    
   public func isValidEmail () -> Bool {
        if self.isEmpty {
            return false
        }
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    public func attributedStringWithBoldFont(normalText: String, boldText: String) -> NSAttributedString {
        

        let attrs = [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16, weight: .bold)]
        let boldString = NSMutableAttributedString(string: boldText, attributes:attrs)
        let attributedString = NSMutableAttributedString(string:normalText)
        boldString.append(attributedString)
        return boldString
        
    }
    
    public func trim() -> String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    public func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(boundingBox.height)
    }
    public func width(withConstraintedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedString.Key.font: font], context: nil)
        return ceil(boundingBox.width)
    }
    
    public func encode() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) ?? ""
    }
    
    public func base64Encoded() -> String {
        return data(using: .utf8)?.base64EncodedString() ?? ""
    }
    
    public func base64Decoded() -> String {
        guard let data = Data(base64Encoded: self) else { return "" }
        return String(data: data, encoding: .utf8) ?? ""
    }
    
    public func replace(old string: String, withString: String) -> String {
        return self.replacingOccurrences(of: string, with: withString)
    }
    
    public  func contains(s: String) -> Bool {
        return (self.range(of: s) != nil) ? true : false
    }
    
    func convertHtml() -> NSAttributedString{
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do{
            return try NSMutableAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html] , documentAttributes: nil)
        }catch{
            return NSAttributedString()
        }
    }
    
     static func format(strings: [String],
                       boldFont: UIFont = UIFont.systemFont(ofSize:  DeviceHelper(device: UIDevice.current).isIPad() ? 20 : 14, weight: UIFont.Weight.medium),
                       boldColor: UIColor = ProjectResources.Colors.primaryGreen.color,
                        inString string: String,
                        font: UIFont = UIFont.systemFont(ofSize:  DeviceHelper(device: UIDevice.current).isIPad() ? 20 : 14),
                        color: UIColor = UIColor.black) -> NSAttributedString {
        let attributedString =
            NSMutableAttributedString(string: string,
                                      attributes: [
                                        NSAttributedString.Key.font: font,
                                        NSAttributedString.Key.foregroundColor: color])
        let boldFontAttribute = [NSAttributedString.Key.font: boldFont, NSAttributedString.Key.foregroundColor: boldColor]
        for bold in strings {
            attributedString.addAttributes(boldFontAttribute, range: (string as NSString).range(of: bold))
        }
        return attributedString
    }
    
    public func maskYear() -> String{
        if self.count > 9 {
            var string = self
            let start = self.index(self.startIndex, offsetBy: 6)
            let end = self.index(self.startIndex, offsetBy: 10)
            string.replaceSubrange(start..<end, with: "✕✕✕✕")
            return string
        }
        return self
    }
    public func maskLicense() -> String{
        if self.count > 7 {
            var string = self
            let start = self.index(self.startIndex, offsetBy: 0)
            let end = self.index(self.endIndex, offsetBy: -4)
            string.replaceSubrange(start..<end, with: "✕✕✕✕✕✕✕✕✕✕✕")
            return string
        }
        return self
    }
    
    public static func random(length: Int = 5) -> String {
        let base = "abcdefghjkmnopqrstuvwxyzABCDEFGHJKMNOPQRSTUVWXYZ0123456789"
        var randomString: String = ""
        for _ in 0..<length {
            let randomValue = arc4random_uniform(UInt32(base.count))
            randomString += "\(base[base.index(base.startIndex, offsetBy: Int(randomValue))])"
        }
        return randomString
    }
    
    func replace_fromStart(value : String) -> String {
        var string = value
        if value.count > 5 {
        let start = value.index(value.startIndex, offsetBy: 0);
        let end = value.index(value.startIndex, offsetBy: 6);
        string.replaceSubrange(start..<end, with: "✕✕✕-✕✕")
        }
        return string
    }
    
    func hidePartTextStartingLeft(value : String) -> String {
        var string = value
        if value.count > 5 {
        let start = value.index(value.startIndex, offsetBy: 0);
        let end = value.index(value.startIndex, offsetBy: 7);
        string.replaceSubrange(start..<end, with: "✕✕✕-✕✕-")
        }
        return string
    }
    
    func isAlphanumeric() -> Bool {
        return self.rangeOfCharacter(from: CharacterSet.alphanumerics.inverted) == nil && self != ""
    }

    func isAlphanumeric(ignoreDiacritics: Bool = false) -> Bool {
        if ignoreDiacritics {
            return self.range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil && self != ""
        }
        else {
            return self.isAlphanumeric()
        }
    }
    

    
    public func convertDateToServerFormat() -> String? {
        let inputDateFormatter = DateFormatter()
        inputDateFormatter.dateFormat = "MM/dd/yyyy"

        guard let date = inputDateFormatter.date(from: self) else {
            return nil
        }

        let outputDateFormatter = DateFormatter()
        outputDateFormatter.dateFormat = "yyyy-MM-dd"
        
        let formattedDate = outputDateFormatter.string(from: date)
        return formattedDate
    }
    
    public func replaceCurrencySymbol() -> String  {
        return self.replacingOccurrences(of:"[^.0-9]", with: "", options: .regularExpression)
    }
    
    static func formatBold(strings: [String],
                           boldFont: UIFont = UIFont.systemFont(ofSize:  DeviceHelper(device: UIDevice.current).isIPad() ? 17 : 14, weight: UIFont.Weight.bold),
                       boldColor: UIColor = ProjectResources.Colors.primaryGreen.color,
                       inString string: String,
                       font: UIFont = UIFont.systemFont(ofSize:  DeviceHelper(device: UIDevice.current).isIPad() ? 15 : 14),
                           color: UIColor = UIColor.black) -> NSAttributedString {
        let attributedString =
            NSMutableAttributedString(string: string,
                                      attributes: [
                                        NSAttributedString.Key.font: font,
                                        NSAttributedString.Key.foregroundColor: color])
        let boldFontAttribute = [NSAttributedString.Key.font: boldFont, NSAttributedString.Key.foregroundColor: boldColor]
        for bold in strings {
            attributedString.addAttributes(boldFontAttribute, range: (string as NSString).range(of: bold))
        }
        return attributedString
    }
}

extension Date {
    func dayNumberOfWeek() -> Int? {
        return Calendar.current.dateComponents([.weekday], from: self).weekday
    }
}

extension Date {
    func dayOfWeek() -> String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self).capitalized
    }
}

extension NSAttributedString {
    func lineSpacing(string : String, space : CGFloat = 1) -> NSAttributedString {
        let attributeString = NSMutableAttributedString(string: string)
        let style = NSMutableParagraphStyle()
        style.alignment = NSTextAlignment.left
        style.lineSpacing = space
        attributeString.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSMakeRange(0, string.count))
        return attributeString
    }
}

extension NSMutableAttributedString {
    func colorText(textForAttribute: String, withColor color: UIColor) {
        let range: NSRange = self.mutableString.range(of: textForAttribute, options: .caseInsensitive)
        self.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
    }
    
    @discardableResult func bold(_ text: String, font : UIFont) -> NSMutableAttributedString {
        let attrs: [NSAttributedString.Key: Any] = [.font: font]
        let boldString = NSMutableAttributedString(string:text, attributes: attrs)
        append(boldString)
        return self
    }
}

extension URL {
    
    public func documentDirectory() -> URL {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let documentsDirectory = paths[0]
        return URL(string: documentsDirectory)!
    }
}

extension Array where Element: AnyObject {
    mutating func remove(object: Element) {
        if let index = firstIndex(where: { $0 === object }) {
            remove(at: index)
        }
    }
}


@nonobjc extension UIViewController {
    public func add(_ child: UIViewController, frame: CGRect? = nil) {
            addChild(child)

            if let frame = frame {
                child.view.frame = frame
            }
            child.view.center = self.view.center
            view.addSubview(child.view)
            child.didMove(toParent: self)
        }

    public func remove() {
            willMove(toParent: nil)
            view.removeFromSuperview()
            removeFromParent()
        }
}

extension UIImage {
    func rotate(radians: Float) -> UIImage? {
        var newSize = CGRect(origin: CGPoint.zero, size: self.size).applying(CGAffineTransform(rotationAngle: CGFloat(radians))).size
        // Trim off the extremely small float value to prevent core graphics from rounding it up
        newSize.width = floor(newSize.width)
        newSize.height = floor(newSize.height)

        UIGraphicsBeginImageContextWithOptions(newSize, false, self.scale)
        let context = UIGraphicsGetCurrentContext()!

        // Move origin to middle
        context.translateBy(x: newSize.width/2, y: newSize.height/2)
        // Rotate around middle
        context.rotate(by: CGFloat(radians))
        // Draw the image at its center
        self.draw(in: CGRect(x: -self.size.width/2, y: -self.size.height/2, width: self.size.width, height: self.size.height))

        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return newImage
    }
}



extension Array where Element: UIImage {

      func makePDF()-> PDFDocument? {
        let pdfDocument = PDFDocument()
        for (index,image) in self.enumerated() {
            let pdfPage = PDFPage(image: image)
            pdfDocument.insert(pdfPage!, at: index)
        }
        return pdfDocument
    }
}

extension CATransition {
    
    //New viewController will appear from bottom of screen.
    public func segueFromBottom() -> CATransition {
        self.duration = 0.375 //set the duration to whatever you'd like.
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.moveIn
        self.subtype = CATransitionSubtype.fromTop
        return self
    }
    //New viewController will appear from top of screen.
    public func segueFromTop() -> CATransition {
        self.duration = 0.375 //set the duration to whatever you'd like.
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.moveIn
        self.subtype = CATransitionSubtype.fromBottom
        return self
    }
    //New viewController will appear from left side of screen.
    public func segueFromLeft() -> CATransition {
        self.duration = 0.1 //set the duration to whatever you'd like.
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.moveIn
        self.subtype = CATransitionSubtype.fromLeft
        return self
    }
    //New viewController will pop from right side of screen.
    public func popFromRight() -> CATransition {
        self.duration = 0.1 //set the duration to whatever you'd like.
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.reveal
        self.subtype = CATransitionSubtype.fromRight
        return self
    }
    //New viewController will appear from left side of screen.
    public func popFromLeft() -> CATransition {
        self.duration = 0.1 //set the duration to whatever you'd like.
        self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        self.type = CATransitionType.reveal
        self.subtype = CATransitionSubtype.fromLeft
        return self
    }
}

extension UIView {
    
    public func addNoTopBorder(color: UIColor, thickness: CGFloat) {
        self.addBottomBorder(color: color, thickness: thickness)
        self.addRightBorder(color: color, thickness:thickness)
        self.addLeftBorder(color: color, thickness: thickness)
    }
    
    public func addNoBottomBorder(color: UIColor, thickness: CGFloat) {
        self.addTopBorder(color: color, thickness: thickness)
        self.addRightBorder(color: color, thickness: thickness)
        self.addLeftBorder(color: color, thickness: thickness)
    }
    
    public func addTopBorder(color: UIColor, thickness: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleBottomMargin]
        border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: thickness)
        self.addSubview(border)
    }

    public func addBottomBorder(color: UIColor, thickness: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleWidth, .flexibleTopMargin]
        border.frame = CGRect(x: 0, y: self.frame.size.height - thickness, width: self.frame.size.width, height: thickness)
        self.addSubview(border)
    }
    
    public func addLeftBorder(color: UIColor, thickness: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleHeight, .flexibleRightMargin]
        border.frame = CGRect(x: 0, y: 0, width: thickness, height: self.frame.size.height)
        self.addSubview(border)
    }

    public func addRightBorder(color: UIColor, thickness: CGFloat) {
        let border = UIView()
        border.backgroundColor = color
        border.autoresizingMask = [.flexibleHeight, .flexibleLeftMargin]
        border.frame = CGRect(x: self.frame.size.width - thickness, y: 0, width: thickness, height: self.frame.size.height)
        self.addSubview(border)
    }
}

extension UIAlertAction {
   @objc public class func makeActionWithTitle(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)?) -> UIAlertAction {
    return UIAlertAction(title: title, style: style, handler: handler)
  }
}

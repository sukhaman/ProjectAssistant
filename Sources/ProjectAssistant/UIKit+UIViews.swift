//
//
//


import UIKit

extension UIButton {
   
    
    public func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        setBackgroundImage(colorImage, for: state)
    }
}

extension UIView {
    public func roundCorners(corners: UIRectCorner, radius: CGFloat){
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
    public func topLineBorder(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: width)
        self.layer.addSublayer(border)
    }
    
    public func trailingBorder(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: self.frame.size.width - width, y: 0, width: width, height: self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    public func bottomLineBorde(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width: self.frame.size.width, height: width)
        self.layer.addSublayer(border)
    }
    
    public func leadingBorder(color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
        self.layer.addSublayer(border)
    }
    
    public func shake(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.1
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 20, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 20, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
    
    public func rotate(_ toValue: CGFloat, duration: CFTimeInterval = 0.3) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = toValue
        animation.duration = duration
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        self.layer.add(animation, forKey: nil)
    }
    
    public func viewTouch( completion : @escaping () -> Void) {
        UIView.animate(withDuration: 0.2,animations: {
            self.transform = CGAffineTransform(scaleX: 0.875, y: 0.86)
        },completion: { finish in
            UIView.animate(withDuration: 0.2, animations: {
                completion()
                self.transform = CGAffineTransform.identity
            })
        })
    }
    
    public func viewTouchSmall( completion : @escaping () -> Void) {
        UIView.animate(withDuration: 0.8,animations: {
            self.transform = CGAffineTransform(scaleX: 0.05, y: 0.05)
        },completion: { finish in
            UIView.animate(withDuration: 0.2, animations: {
                completion()
                self.backgroundColor = .clear
                self.transform = CGAffineTransform.identity
            })
        })
    }
    
    
}

extension UIImageView {
    
    public func imageTouch( completion : @escaping () -> Void) {
        UIImageView.animate(withDuration: 1.0,animations: {
            self.transform = CGAffineTransform(scaleX: 1.2, y: 1.0)
        },completion: { finish in
            UIImageView.animate(withDuration: 0.5, animations: {
                completion()
                //self.transform = CGAffineTransform.identity
                self.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            })
        })
    }
    /// Calculates the rect of an image displayed in a `UIImageView` with the `scaleAspectFit` `contentMode`
    var imageRect: CGRect {
        guard let image = image else { return bounds }
        guard contentMode == .scaleAspectFit else { return bounds }
        guard image.size.width > 0 && image.size.height > 0 else { return bounds }
        
        let scale: CGFloat
        if image.size.width > image.size.height {
            scale = bounds.width / image.size.width
        } else {
            scale = bounds.height / image.size.height
        }
        
        let size = CGSize(width: image.size.width * scale, height: image.size.height * scale)
        let x = (bounds.width - size.width) / 2.0
        let y = (bounds.height - size.height) / 2.0
        
        return CGRect(x: x, y: y, width: size.width, height: size.height)
    }
}


extension UIImage {
    
    public func resizeImage(newWidth: CGFloat) -> UIImage {
        let newHeight = newWidth // self.size.height * scale
        UIGraphicsBeginImageContext(CGSize(width: newWidth, height: newHeight))
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}

extension UILabel {
    public  func image(image: UIImage, prifix: Bool = false) {
        let attachment: NSTextAttachment = NSTextAttachment()
        attachment.image = image
        let attachmentString: NSAttributedString = NSAttributedString(attachment: attachment)
        
        if (prifix) {
            let strLabelText: NSAttributedString = NSAttributedString(string: self.text!)
            let mutableAttachmentString: NSMutableAttributedString = NSMutableAttributedString(attributedString: attachmentString)
            mutableAttachmentString.append(strLabelText)
            self.attributedText = mutableAttachmentString
        } else {
            let strLabelText: NSMutableAttributedString = NSMutableAttributedString(string: self.text!)
            strLabelText.append(attachmentString)
            self.attributedText = strLabelText
        }
    }
}

extension Collection where Indices.Iterator.Element == Index {
    subscript (exist index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension UITableView {
    
    public func reload() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    public func reloadRows(_ indexPaths : [IndexPath] ) {
        DispatchQueue.main.async { self.reloadRows(at: indexPaths, with: .automatic) }
    }
    
    public  func deleteRows(_ indexPaths : [IndexPath] )  {
        self.beginUpdates()
        self.deleteRows(at: indexPaths, with: .automatic)
        self.endUpdates()
    }
    
    public func registerCell(_ cellIdentifier : String = "cell") {
        self.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        self.tableFooterView = UIView()
        self.tableHeaderView = UIView()
    }
    public  func registerCustomeCell(_ nibNames : [String],  cellIdentifier : String = "cell") {
        
        for nibName in nibNames {
            let nib = !DeviceHelper(device: UIDevice.current).isIPad() ? nibName : nibName 
            let rowNib = UINib(nibName: nib, bundle: nil)
            self.register(rowNib, forCellReuseIdentifier: cellIdentifier)
        }
        self.tableFooterView = UIView()
        self.tableHeaderView = UIView()
    }
    
    public func registerCustomeCellWithcellIdentifier(_ nibNames : [String],  cellIdentifier : [String] = ["cell"]) {
        
        for i in 0..<nibNames.count {
            let nibName = nibNames[i]
            let identifier = cellIdentifier[i]
            let rowNib = UINib(nibName: nibName, bundle: nil)
            self.register(rowNib, forCellReuseIdentifier: identifier)
            
        }
        self.tableFooterView = UIView()
        self.tableHeaderView = UIView()
    }
    
    public func registerCustomeHeaderCell(_ nibNames : [String],  cellIdentifier : [String] = ["cell"]) {
        
        for i in 0..<nibNames.count {
            let nibName = nibNames[i]
            if !nibName.trim().isEmpty {
                let identifier = cellIdentifier[i]
                let rowNib = UINib(nibName: nibName, bundle: nil)
                self.register(rowNib, forHeaderFooterViewReuseIdentifier: identifier)
            }
        }
    }
    
    public func registerHeaderCell(_ nibName : String,  cellIdentifier : String = "headerView") {
        let nib = !DeviceHelper(device: UIDevice.current).isIPad() ? nibName : nibName
        let rowNib = UINib(nibName: nib, bundle: Bundle.main)
        self.register(rowNib, forHeaderFooterViewReuseIdentifier: cellIdentifier)
    }
    
    public func registerFooterCell(_ nibName : String,  cellIdentifier : String = "footerView") {
        let nib = !DeviceHelper(device: UIDevice.current).isIPad() ? nibName : nibName + "_iPad"
        let rowNib = UINib(nibName: nib, bundle: Bundle.main)
        self.register(rowNib, forHeaderFooterViewReuseIdentifier: cellIdentifier)
    }
}


extension UITextField {
    
    public  func setInputViewDatePicker(datePicker: UIDatePicker,target: Any, selector: Selector) {
        // Create a UIDatePicker object and assign to inputView
        let screenWidth = UIScreen.main.bounds.width
        datePicker.datePickerMode = .date //2
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        } 
        self.inputView = datePicker //3
        // Create a toolbar and assign it to inputAccessoryView
        let toolBar = UIToolbar(frame: CGRect(x: 0.0, y: 0.0, width: screenWidth, height: 44.0)) //4
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil) //5
        // let cancel = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: #selector(tapCancel)) // 6
        let barButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector) //7
        toolBar.setItems([flexible, barButton], animated: false) //8
        self.inputAccessoryView = toolBar //9
    }
    
    @objc public func tapCancel() {
        self.resignFirstResponder()
    }
    
    public func setupCurrencyFormatting() {
        addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc private func textFieldDidChange() {
        guard let text = text else { return }
        
        let textWithoutMoneySign = text.replacingOccurrences(of: "[^0-9]", with: "", options: .regularExpression)
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.currencyCode = "$"
        
        if let number = formatter.number(from: textWithoutMoneySign) {
            let formattedString = formatter.string(from: number)
            if let formattedString = formattedString {
                self.text = "$" + formattedString
            }
        }
        
    }
}

extension String {
    // Helper function to format number string
    public func formatNumberString(_ numberString: inout String) {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2 // Ensure two decimal places
        numberString = numberString.replacingOccurrences(of: ",", with: "").replacingOccurrences(of: "$", with: "")
        if let number = formatter.number(from: numberString) {
            numberString = formatter.string(from: number) ?? ""
        }
        
        
    }
    
    public func tail(s: String) -> String {
        return String(s.suffix(from: s.index(s.startIndex, offsetBy: 2,limitedBy: s.endIndex) ?? s.endIndex))
    }
}


extension UILabel {
    public func indexOfAttributedTextCharacterAtPoint(point: CGPoint) -> Int {
        assert(self.attributedText != nil, "This method is developed for attributed string")
        let textStorage = NSTextStorage(attributedString: self.attributedText!)
        let layoutManager = NSLayoutManager()
        textStorage.addLayoutManager(layoutManager)
        let textContainer = NSTextContainer(size: self.frame.size)
        textContainer.lineFragmentPadding = 0
        textContainer.maximumNumberOfLines = self.numberOfLines
        textContainer.lineBreakMode = self.lineBreakMode
        layoutManager.addTextContainer(textContainer)
        
        let index = layoutManager.characterIndex(for: point, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        return index
    }
}

extension UITapGestureRecognizer {
    
    public func didTapAttributedTextInLabel(label: UILabel, inRange targetRange: NSRange) -> Bool {
        // Create instances of NSLayoutManager, NSTextContainer and NSTextStorage
        let layoutManager = NSLayoutManager()
        let textContainer = NSTextContainer(size: CGSize.zero)
        let textStorage = NSTextStorage(attributedString: label.attributedText!)
        
        // Configure layoutManager and textStorage
        layoutManager.addTextContainer(textContainer)
        textStorage.addLayoutManager(layoutManager)
        
        // Configure textContainer
        textContainer.lineFragmentPadding = 0.0
        textContainer.lineBreakMode = label.lineBreakMode
        textContainer.maximumNumberOfLines = label.numberOfLines
        let labelSize = label.bounds.size
        textContainer.size = labelSize
        
        // Find the tapped character location and compare it to the specified range
        let locationOfTouchInLabel = self.location(in: label)
        let textBoundingBox = layoutManager.usedRect(for: textContainer)
        
        let textContainerOffset = CGPoint(x: (labelSize.width - textBoundingBox.size.width) * 0.5 - textBoundingBox.origin.x, y: (labelSize.height - textBoundingBox.size.height) * 0.5 - textBoundingBox.origin.y)
        
        let locationOfTouchInTextContainer = CGPoint(x: locationOfTouchInLabel.x - textContainerOffset.x, y: locationOfTouchInLabel.y - textContainerOffset.y)
        let indexOfCharacter = layoutManager.characterIndex(for: locationOfTouchInTextContainer, in: textContainer, fractionOfDistanceBetweenInsertionPoints: nil)
        return NSLocationInRange(indexOfCharacter, targetRange)
    }
}

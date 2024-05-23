//
//  Copyright © 2023 Sukhaamn. All rights reserved.
//


import UIKit

public class VFITextField: UITextField {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
   
    public convenience init(placeholder: String) {
        self.init(frame: .zero)
        self.placeholder = placeholder
        
       
    }
    
    private func configure() {
        textColor = .black
        textAlignment = .left
        translatesAutoresizingMaskIntoConstraints = false
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        leftView = paddingView
        leftViewMode = UITextField.ViewMode.always
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
        
    }
    
    
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    

}


public class VFITextFieldNoBorder: UITextField {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    public convenience init(placeholder: String, fontSize: CGFloat) {
        self.init(frame: .zero)
        self.placeholder = placeholder
        self.font = .systemFont(ofSize: fontSize)
       
    }
    
    private func configure() {
        textColor = .black
        textAlignment = .left
        layer.cornerRadius = 4
        translatesAutoresizingMaskIntoConstraints = false
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        leftView = paddingView
        leftViewMode = UITextField.ViewMode.always
        
    }
    
    
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    

}

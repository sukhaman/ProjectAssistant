//
//  Copyright © 2023 Sukhaman. All rights reserved.
//


import UIKit

public class VFITextFieldWIcon: UITextField {
    
    public override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
            var textRect = super.leftViewRect(forBounds: bounds)
            textRect.origin.x += leftPadding
            return textRect
        }
        
        @IBInspectable var leftImage: UIImage? {
            didSet {
                updateView()
            }
        }
        
        @IBInspectable var leftPadding: CGFloat = 0
        
        @IBInspectable var color: UIColor = UIColor.lightGray {
            didSet {
                updateView()
            }
        }
    
    @IBInspectable var bgColor: UIColor = UIColor.black
        
        func updateView() {
            if let image = leftImage {
                leftViewMode = UITextField.ViewMode.always
                let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
                imageView.image = image
                let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
                imageContainerView.addSubview(imageView)
                leftView = imageContainerView
                imageView.contentMode = .scaleAspectFit
                imageView.tintColor = color
                
                leftView = imageContainerView
            } else {
                leftViewMode = UITextField.ViewMode.never
                leftView = nil
            }
            // Placeholder text color
            if self.bgColor == UIColor.black {
                attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: UIColor.white])

            } else {
                attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: UIColor.black])

            }
        }
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    public convenience init(placeholder: String) {
        self.init(frame: .zero)
        self.placeholder = placeholder
        
       
    }
    
    private func configure() {
        textColor = .black
        textAlignment = .left
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 4
        
    }
    
    
    
    let padding = UIEdgeInsets(top: 0, left: 40, bottom: 0, right: 10)
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    

}

public class VFITextFieldRightWIcon: UITextField {
    
    public override func rightViewRect(forBounds bounds: CGRect) -> CGRect {
            var textRect = super.rightViewRect(forBounds: bounds)
            textRect.origin.x += rightPadding
            return textRect
        }
        
        @IBInspectable public var rightImage: UIImage? {
            didSet {
                updateView()
            }
        }
        
        @IBInspectable var rightPadding: CGFloat = 0
        
        @IBInspectable var color: UIColor = UIColor.lightGray {
            didSet {
                updateView()
            }
        }
    
    @IBInspectable var bgColor: UIColor = UIColor.black
        
        func updateView() {
            if let image = rightImage {
                let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
                leftView = paddingView
                leftViewMode = UITextField.ViewMode.always
                rightViewMode = UITextField.ViewMode.always
                let imageView = UIImageView(frame: CGRect(x: self.bounds.width, y: 0, width: 20, height: 20))
                imageView.image = image
                let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 20))
                imageContainerView.addSubview(imageView)
                rightView = imageContainerView
                imageView.contentMode = .scaleAspectFit
                imageView.tintColor = color
                
                rightView = imageContainerView
            } else {
                rightViewMode = UITextField.ViewMode.never
                rightView = nil
            }
            
            attributedPlaceholder = NSAttributedString(string: placeholder != nil ?  placeholder! : "", attributes:[NSAttributedString.Key.foregroundColor: UIColor.lightGray])

            
        }
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
        layer.borderColor = UIColor.lightGray.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 5
        
    }
    
    
    
    let padding = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 10)
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    
    

}


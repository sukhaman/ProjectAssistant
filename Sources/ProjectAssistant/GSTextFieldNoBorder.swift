//
//
//

import UIKit

public class GSTextFieldNoBorder: UITextField {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
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

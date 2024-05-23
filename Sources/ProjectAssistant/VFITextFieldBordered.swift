//
//
//

import UIKit


public class GSTextFieldBordered: UITextField {
    
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
        
        self.layer.cornerRadius = 5
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.masksToBounds = true
    }
    
    /// Adds a drop Down Icon to the far right of the TextField
    public func addDropDownIcon() {
        let dropDownIcon = UIImageView(image: UIImage(named: "down"))
        dropDownIcon.translatesAutoresizingMaskIntoConstraints = false
        dropDownIcon.contentMode = .scaleAspectFit
        
        self.addSubview(dropDownIcon)
        
        NSLayoutConstraint.activate([
            dropDownIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            dropDownIcon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            dropDownIcon.heightAnchor.constraint(equalToConstant: 22),
            dropDownIcon.widthAnchor.constraint(equalToConstant: 15)
        ])
    }
    
    let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    
}


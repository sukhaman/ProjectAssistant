//
//
//

import UIKit

public class GSTextFieldWBottomLine: UITextField {
    
    private let bottomLine = UIView()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    public convenience init(lineColor: UIColor, placeHolder: String) {
        self.init(frame: .zero)
        self.placeholder = placeHolder
        self.addBottomLine(lineColor: lineColor)
        
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        borderStyle = .none
        textColor = .black
        textAlignment = .left
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.frame.height))
        leftView = paddingView
        leftViewMode = UITextField.ViewMode.always
    }
    
    private func addBottomLine(lineColor: UIColor) {
        
        self.addSubview(bottomLine)
        
        self.bottomLine.translatesAutoresizingMaskIntoConstraints = false
        self.bottomLine.backgroundColor = lineColor
        
        NSLayoutConstraint.activate([
            self.bottomLine.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            bottomLine.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            bottomLine.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            bottomLine.heightAnchor.constraint(equalToConstant: 0.5)
        ])
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        let padding = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        return bounds.inset(by: padding)
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
}



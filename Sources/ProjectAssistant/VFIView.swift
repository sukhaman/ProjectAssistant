//
//
//


import UIKit

open class GSView: UIView {
    
   public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
   public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints  = false
        isUserInteractionEnabled = true
        
    }
    
    public func addBorderWithBottomCornerRadius(borderWidth: CGFloat = 1, borderColor: CGColor = UIColor.lightGray.cgColor, cornorRadius: CGFloat = 10) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        self.layer.cornerRadius = cornorRadius
        self.layer.maskedCorners = [ .layerMaxXMaxYCorner,.layerMinXMaxYCorner]
    }
    
    public func addBorderWithTopCornerRadius(borderWidth: CGFloat = 1, borderColor: CGColor = UIColor.lightGray.cgColor, cornorRadius: CGFloat = 10) {
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
        self.layer.cornerRadius = cornorRadius
        self.layer.maskedCorners = [ .layerMaxXMinYCorner,.layerMinXMinYCorner]
    }
}

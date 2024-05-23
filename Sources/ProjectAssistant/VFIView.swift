//
//  Copyright © 2023 Sukhaman. All rights reserved.
//

import Foundation
import UIKit

open class VFIView: UIView {
    
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

public class RoundShadowView: UIView {

    let containerView = UIView()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        layoutView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func layoutView() {

        // set the shadow of the view's layer
        layer.backgroundColor = UIColor.clear.cgColor
        layer.shadowColor = UIColor.clear.cgColor
        layer.shadowOffset = CGSize(width: 0, height: -8.0)
        layer.shadowOpacity = 0.12
        layer.shadowRadius = 10.0
        
        containerView.layer.masksToBounds = true

        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false

        // pin the containerView to the edges to the view
        containerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        containerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
}

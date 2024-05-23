//
//
//

import UIKit

open class GSLabel: UILabel {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
   
    public convenience init(textAlignment: NSTextAlignment, fontSize: CGFloat, weight: UIFont.Weight) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
       
    }
    
    private func configure() {
        textColor = .black
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byTruncatingTail
        numberOfLines = 0
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = true
        
    }

}

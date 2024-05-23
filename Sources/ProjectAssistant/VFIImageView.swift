//
//
//

import UIKit

public class GSImageView: UIImageView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    private func configure() {
        
        layer.cornerRadius = 10
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints  = false
        isUserInteractionEnabled = true
        
    }
    
}


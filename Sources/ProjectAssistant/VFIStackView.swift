//
//
//

import UIKit


public class GSStackView: UIStackView {
    
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        self.translatesAutoresizingMaskIntoConstraints  = false
        self.axis = .vertical
        self.distribution = .fillEqually
        self.alignment = .leading
    }
}

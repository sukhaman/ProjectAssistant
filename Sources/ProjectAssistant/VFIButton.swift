//
// 
//


import UIKit


public class GSButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
   public convenience init(backgroundColor: UIColor, title: String, titleColor: UIColor = .white) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
         
    }
    
    private func configure() {
        
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
   public func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
    
}


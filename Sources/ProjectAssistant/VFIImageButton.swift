//
//  Copyright © 2023 Sukhaman. All rights reserved.
//

import Foundation
import UIKit

public class VFIImageButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
  public convenience init(backgroundColor: UIColor, titleImage: UIImage) {
        self.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setImage(titleImage, for: .normal)
   
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
   public func set(backgroundColor: UIColor, titleImage: UIImage) {
        
        self.backgroundColor = backgroundColor
        setImage(titleImage, for: .normal)
        
    }
    
}


//
//  Copyright © 2023 Sukhaman. All rights reserved.
//


import UIKit


public class VFIProgressBar: UIStackView {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
   public convenience init(currentProgress: Int, totalProgress: Int) {
        self.init(frame: .zero)
        self.setUpStacKView(currentProgress: currentProgress, totalProgress: totalProgress)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   public func updateCurrentAndTotalProgress(currentProgress: Int, totalProgress: Int) {
        self.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        self.setUpStacKView(currentProgress: currentProgress, totalProgress: totalProgress)
    }
    
    private func configure() {
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints  = false
        self.spacing = 7
        self.axis = .horizontal
        self.alignment = .fill
        self.distribution = .fillEqually
    }
    
    private func setUpStacKView(currentProgress: Int, totalProgress: Int) {
        for _ in 1...currentProgress {
            let view = VFIView(frame: .zero)
            view.backgroundColor = ProjectResources.Colors.secondaryGreen.color
            
            self.addArrangedSubview(view)
        }
        
        for _ in currentProgress..<totalProgress {
            let view = VFIView(frame: .zero)
            view.backgroundColor = ProjectResources.Colors.appAliceBlue.color
            
            self.addArrangedSubview(view)
        }
    }
}

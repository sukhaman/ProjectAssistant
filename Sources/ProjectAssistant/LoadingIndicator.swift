//
//
//

import UIKit

public class LoadingIndicator {
    private var activityIndicator = UIActivityIndicatorView()
    var view = UIView()
    private var messageLabel = UILabel()
    
   public init(containerView: UIView, message: String = "") {
       
        containerView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints  = false
        view.backgroundColor = ProjectResources.Colors.primaryGreen.color
        // Create and configure the activity indicator
        activityIndicator.style = .large
        activityIndicator.color = .white
        activityIndicator.hidesWhenStopped = true
        
        // Create and configure the message label
        
       if message.isEmpty {
           messageLabel.text = ProjectAssistant.pleaseWait
       } else {
           messageLabel.text = message
       }
        messageLabel.textColor = .white
        messageLabel.font = UIFont.systemFont(ofSize: 18)
        messageLabel.textAlignment = .center
        
        // Add subviews to the container view
        view.addSubview(activityIndicator)
        view.addSubview(messageLabel)
        view.isHidden = true
        // Position subviews within the container view
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            view.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            view.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            view.widthAnchor.constraint(equalToConstant: 230),
            view.heightAnchor.constraint(equalToConstant: 150),
            
            messageLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            messageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            messageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            messageLabel.heightAnchor.constraint(equalToConstant: 50),
            
            activityIndicator.topAnchor.constraint(equalTo: messageLabel.bottomAnchor,constant: 16),
            activityIndicator.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            activityIndicator.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
           
        ])
        
        self.view.layer.shadowPath = UIBezierPath(rect: self.view.bounds).cgPath
        self.view.layer.shadowOpacity = 2
        self.view.layer.shadowOffset = .zero
        self.view.layer.shadowRadius = 5
        self.view.layoutSubviews()
        self.view.layer.cornerRadius = 10
    }
    
   public func start() {
        DispatchQueue.main.async {
            self.view.isUserInteractionEnabled = false
            self.activityIndicator.startAnimating()
            self.view.isHidden = false
        }
    }
    
   public func stop() {
        DispatchQueue.main.async {
            self.view.isUserInteractionEnabled = true
            self.activityIndicator.stopAnimating()
            self.view.isHidden = true
        }
    }
}


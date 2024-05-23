//
//  Created by Sukhaman on 5/20/24.
//

import Foundation

public class LocalizationManager {
    static public var currentLanguage: String {
        get {
            if let languageCode = UserDefaults.standard.array(forKey: "AppleLanguages") as? [String] {
                var langauge = languageCode.first ?? "en"
                 if langauge.contains(s: "es") {
                     langauge = "es"
                 } else if langauge.contains(s: "en") {
                     langauge = "en"
                 }
                return langauge
            } else {
                return "en"
            }

        }
        set {
            UserDefaults.standard.set([newValue], forKey: "AppleLanguages")
            UserDefaults.standard.synchronize()

            // Notify observers that the language has changed
            NotificationCenter.default.post(name: .languageDidChange, object: nil)
        }
    }

    static public func setLanguage(_ language: String) {
        currentLanguage = language
        UserDefaults.standard.set([language], forKey: "AppleLanguages")
    }
    
    static public func resetLanguage() {
        Bundle.resetLanguage()
    }
}

extension Bundle {
    static public func setLanguage(_ language: String) {
        // Use swizzling or other mechanisms to set the desired language for testing
        UserDefaults.standard.set([language], forKey: "AppleLanguages")
    }

    static public func resetLanguage() {
        // Reset the language to the default after testing
        UserDefaults.standard.removeObject(forKey: "AppleLanguages")
    }
}

extension Notification.Name {
    static let languageDidChange = Notification.Name("LanguageDidChange")
}

//
//
//

import UIKit

public protocol DeviceSupportProtocol {
    var userInterfaceIdiom: UIUserInterfaceIdiom { get }
}


extension UIDevice: DeviceSupportProtocol {}

public class DeviceHelper {
    let _device: DeviceSupportProtocol
    
    // Dependency Injection
    public init(device: DeviceSupportProtocol) {
        _device = device
    }

    public func isIPad() -> Bool {
        return _device.userInterfaceIdiom == .pad
    }
}

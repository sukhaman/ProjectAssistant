//
//
//


import XCTest
@testable import ProjectAssistant

class GSTextFieldNoBorderTests: XCTestCase {
    
    // Test default initialization
    func test_textField_initWithFrame() {
        let textField = GSTextFieldNoBorder(frame: .zero)
        XCTAssertNotNil(textField)
        XCTAssertEqual(textField.textColor, .black)
        XCTAssertEqual(textField.textAlignment, .left)
        XCTAssertEqual(textField.layer.cornerRadius, 4)
        XCTAssertEqual(textField.leftViewMode, UITextField.ViewMode.always)
        XCTAssertNotNil(textField.leftView)
        XCTAssertEqual(textField.translatesAutoresizingMaskIntoConstraints, false)
    }
    
    // Test convenience initializer
    func test_textField_convenienceInit() {
        let placeholder = "Enter text"
        let fontSize: CGFloat = 16
        let textField = GSTextFieldNoBorder(placeholder: placeholder, fontSize: fontSize)
        
        XCTAssertEqual(textField.placeholder, placeholder)
        XCTAssertEqual(textField.font, UIFont.systemFont(ofSize: fontSize))
    }
    
    // Test custom placeholder rect
    func test_textField_placeholderRect() {
        let textField = GSTextFieldNoBorder(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        let placeholderRect = textField.placeholderRect(forBounds: textField.bounds)
        let expectedRect = textField.bounds.inset(by: textField.padding)
        
        XCTAssertEqual(placeholderRect, expectedRect)
    }
}

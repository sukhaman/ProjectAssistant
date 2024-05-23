//
//  Copyright © 2024 Sukhaman. All rights reserved.
//

import Foundation
import XCTest
@testable import ProjectAssistant

class GSProgressBarTests: XCTestCase {
    

    // Test default initialization
    func test_progressBar_initWithFrame() {
        let progressBar = GSProgressBar(frame: .zero)
        XCTAssertNotNil(progressBar)
        XCTAssertEqual(progressBar.axis, .horizontal)
        XCTAssertEqual(progressBar.spacing, 7)
        XCTAssertEqual(progressBar.alignment, .fill)
        XCTAssertEqual(progressBar.distribution, .fillEqually)
    }
    
    // Test convenience initializer
    func test_progressBar_convenienceInit() {
        let currentProgress = 3
        let totalProgress = 5
        let progressBar = makeSUT(currentProgress: currentProgress, totalProgress: totalProgress)
        
        XCTAssertEqual(progressBar.arrangedSubviews.count, totalProgress)
        
        let filledViews = progressBar.arrangedSubviews.prefix(currentProgress)
        for view in filledViews {
            XCTAssertEqual(view.backgroundColor, ProjectResources.Colors.secondaryGreen.color)
        }
        
        let emptyViews = progressBar.arrangedSubviews.suffix(from: currentProgress)
        for view in emptyViews {
            XCTAssertEqual(view.backgroundColor, ProjectResources.Colors.appAliceBlue.color)
        }
    }

    // Test update progress logic
    func test_progressBar_updateCurrentAndTotalProgress() {
        let initialProgressBar = makeSUT(currentProgress: 2, totalProgress: 4)
        XCTAssertEqual(initialProgressBar.arrangedSubviews.count, 4)
        
        initialProgressBar.updateCurrentAndTotalProgress(currentProgress: 3, totalProgress: 5)
        
        XCTAssertEqual(initialProgressBar.arrangedSubviews.count, 5)
        
        let filledViews = initialProgressBar.arrangedSubviews.prefix(3)
        for view in filledViews {
            XCTAssertEqual(view.backgroundColor, ProjectResources.Colors.secondaryGreen.color)
        }
        
        let emptyViews = initialProgressBar.arrangedSubviews.suffix(from: 3)
        for view in emptyViews {
            XCTAssertEqual(view.backgroundColor, ProjectResources.Colors.appAliceBlue.color)
        }
    }
    
    // MARK: Helper
    private func makeSUT(currentProgress: Int, totalProgress: Int) -> GSProgressBar {
        return GSProgressBar(currentProgress: currentProgress, totalProgress: totalProgress)
    }
}

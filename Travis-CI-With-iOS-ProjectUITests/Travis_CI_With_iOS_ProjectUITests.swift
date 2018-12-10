import XCTest

final class Travis_CI_With_iOS_ProjectUITests: XCTestCase {
    
    private var application: XCUIApplication!
    
    override func setUp() {
        continueAfterFailure = false
        
        application = XCUIApplication()
        application.launch()
    }
    
    func testBasicFlow() {
        let firstValueTextField = application.textFields["First Value Text Field"]
        firstValueTextField.tap()
        firstValueTextField.typeText("3")
        
        let secondValueTextField = application.textFields["Second Value Text Field"]
        secondValueTextField.tap()
        secondValueTextField.typeText("2")
        
        let calculateButton = application.buttons["Calculate Button"]
        calculateButton.tap()
        
        let resultsTextField = application.textFields["Results Text Field"]
        let results = Int(resultsTextField.value as! String)
        XCTAssertEqual(5, results)
    }
    
}

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var firstValueTextField: UITextField!
    @IBOutlet private weak var secondValueTextField: UITextField!
    @IBOutlet weak var resultsTextField: UITextField!
    
    private let calculator = Calculator()
    
    // MARK: - Actions
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        updateResultsTextField()
    }
    
    // MARK: - Private
    
    private func updateResultsTextField() {
        guard let firstValueString = firstValueTextField.text,
            let secondValueString = secondValueTextField.text,
            let firstValue = Int(firstValueString),
            let secondValue = Int(secondValueString) else {
                return    
        }
        
        let results = calculator.add(firstValue: firstValue, secondValue: secondValue)
        
        resultsTextField.text = String(results)
    }
    
}

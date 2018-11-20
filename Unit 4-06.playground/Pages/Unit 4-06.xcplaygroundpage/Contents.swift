

// Created on: Nov 2018
// Created by: Amin Zeina
// Created for: ICS3U
// This program check if 2 strings are the same 

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    
    let instructionsLabel = UILabel()
    let stringOneTextField = UITextField()
    let stringTwoTextField = UITextField()
    let checkButton = UIButton()
    let answerLabel = UILabel()
    
    @objc func callCheckStrings() {
        // put entered strings into variables
        if let stringOne : String = String(stringOneTextField.text!),  let stringTwo : String = String(stringTwoTextField.text!) {
            // call check strings and check if it returns true or false
            if checkStrings(stringOneSent: stringOne, stringTwoSent: stringTwo) == true {
                answerLabel.text = "They are the same."
            } else {
                answerLabel.text = "They are different."
            }
        } else {
            answerLabel.text = "Please enter a string"
        }
    }
    
    @objc func checkStrings(stringOneSent : String, stringTwoSent: String) -> Bool{
        // check if the strings are the same
        if stringOneSent.uppercased() == stringTwoSent.uppercased() {
            return true
        } else {
            return false
        }
    }
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter 2 strings to check if they are the same: "
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stringOneTextField.borderStyle = UITextBorderStyle.roundedRect
        stringOneTextField.placeholder = "             "
        view.addSubview(stringOneTextField)
        stringOneTextField.translatesAutoresizingMaskIntoConstraints = false
        stringOneTextField.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        stringOneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        stringTwoTextField.borderStyle = UITextBorderStyle.roundedRect
        stringTwoTextField.placeholder = "             "
        view.addSubview(stringTwoTextField)
        stringTwoTextField.translatesAutoresizingMaskIntoConstraints = false
        stringTwoTextField.topAnchor.constraint(equalTo: stringOneTextField.bottomAnchor, constant: 20).isActive = true
        stringTwoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        checkButton.setTitle("Check", for: UIControlState.normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.addTarget(self, action: #selector(callCheckStrings), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.leadingAnchor.constraint(equalTo: stringOneTextField.trailingAnchor, constant: 20).isActive = true
        checkButton.topAnchor.constraint(equalTo: stringTwoTextField.topAnchor, constant: 0).isActive = true
        
        answerLabel.text = nil
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: checkButton.bottomAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        

    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

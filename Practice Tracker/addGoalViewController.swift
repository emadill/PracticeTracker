//
//  addGoalViewController.swift
//  Practice Tracker
//
//  Created by Evan Madill on 12/16/18.
//  Copyright © 2018 Evan Madill. All rights reserved.
//

import UIKit
import os.log

class addGoalViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var goalTitleTextField: UITextField!
    @IBOutlet weak var goalDescriptionTextView: UITextView!
    @IBOutlet weak var evalFrequencySegmentControl: UISegmentedControl!
    @IBOutlet weak var evalLabel: UILabel!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var cancelButton: UIBarButtonItem!
    var goal = Goals(title: "", description: nil, longestStreak: 0, currentStreak: 0, resetEval: nil)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // this may break -- not as implemented in example
        goalTitleTextField.delegate = self
        updateSaveButtonState()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("Save button not pressed", log: OSLog.default, type: .debug)
            return
        }
        
        let title = goalTitleTextField.text ?? ""
        let description = goalDescriptionTextView.text ?? ""
        // Currently, seg 0 = Day, seg 1 = Week
        let evalFrequencyInt = evalFrequencySegmentControl.selectedSegmentIndex
        
        goal = Goals(title: title, description: description, longestStreak: 0, currentStreak: 0, resetEval: nil)
    }
    
    // MARK: UITextFieldDelegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
        saveButton.isEnabled = false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateSaveButtonState()
        navigationItem.title = textField.text
    }
    
    // MARK: Private Methods
    private func updateSaveButtonState() {
        //Disable save button if title text field is empty
        let title = goalTitleTextField.text ?? ""
        saveButton.isEnabled = !title.isEmpty
    }
}

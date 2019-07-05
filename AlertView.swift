//
//  AlertView.swift
//  Re Usable Component
//
//  Created by Irshadali Palsaniya on 05/07/19.
//  Copyright © 2019 Irshadali Palsaniya. All rights reserved.
//

import Foundation
import UIKit

struct Alert {
    
    private static func showAlert(on vc: UIViewController, with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async { vc.present(alert, animated: true) }
    }
    
    
    static func showIncompleteForm(data vc: UIViewController) {
        showAlert(on: vc, with: "IncompleteForm", message: "You should fill all Data")
    }
    
    static func showInvalidEmail(data vc: UIViewController) {
        showAlert(on: vc, with: "Invalid Email", message: "Please use another email")
    }
    
    static func showUnableToRetrieve(data vc: UIViewController) {
        showAlert(on: vc, with: "Data Not Found", message: "Unable to Retrieve Data")
    }
    static func showWorngPassword(data vc: UIViewController) {
        showAlert(on: vc, with: "Password Incorrect", message: "Password Is Wrong")
    }
}

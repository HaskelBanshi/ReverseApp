//
//  ViewController.swift
//  ReverseApp
//
//  Created by a2 on 24.08.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
                let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
                view.addGestureRecognizer(tap)
            }
    

    
    @IBAction func Button(_ sender: Any) {
        let str = textField.text!
        var result = ""
        str.enumerateSubstrings(in: str.startIndex..., options: .byWords) { string, range, enclosingRange, _ in
            result.append(contentsOf: string!.reversed())
            result.append(contentsOf: str[range.upperBound..<enclosingRange.upperBound])
        }
        label.text = result
    }
    
@objc func dismissKeyboard() {
      view.endEditing(true)
    }
}

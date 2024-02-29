//
//  AddExam.swift
//  Project
//
//  Created by Leotrim Halimi on 23/02/24.
//  Copyright © 2024 Leotrim Halimi. All rights reserved.
//

import UIKit

class AddExam: UIViewController {

    @IBOutlet weak var notice_label: UILabel!
    
    @IBOutlet weak var name_txt: UITextField!
    
    @IBOutlet weak var location_txt: UITextField!
    
    @IBOutlet weak var date_picker: UIDatePicker!
    
    
    var stu_id : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        notice_label.text = "Welcome, " + String(stu_id)
    }
    @IBAction func submitBtn(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.storeExamInfo(unit_name: name_txt.text!, date_time: date_picker.date, location: location_txt.text!, stu_id: stu_id)
        showAlert(msg: "Data is sucessfully saved")
    }
    
    func showAlert(msg: String) {
        let alert = UIAlertController(title: "Message", message: msg, preferredStyle: UIAlertController.Style.alert)
        let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion:nil)
    }
    
    //pass the stu_id to other pages
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "gotoEdit"){
            let DestViewController:EditStudent = segue.destination as! EditStudent
             DestViewController.stu_id = stu_id
        }
        if (segue.identifier == "gotoViewExam"){
            let DestViewController:ViewExam = segue.destination as! ViewExam
            DestViewController.stu_id = stu_id
        }
    }
    

}

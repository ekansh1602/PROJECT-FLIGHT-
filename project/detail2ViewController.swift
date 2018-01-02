//
//  detail2ViewController.swift
//  project
//
//  Created by Ekansh Anand on 23/11/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit

class detail2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        label1.text = name
        label2.text = name1
        time1.text = det
        time2.text = art
        hour.text = hr
        rn.text = re
        rupee.text = r
        s.text = stop
        createdatepicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var label1: UILabel!
    var name = ""
    
    @IBOutlet weak var label2: UILabel!
    var name1 = ""
    
    @IBOutlet weak var time1: UILabel!
    var det = ""
    
    @IBOutlet weak var time2: UILabel!
    var art = ""

    @IBOutlet weak var hour: UILabel!
    var hr = ""
    
    
    @IBOutlet weak var rn: UILabel!
    var re = ""
    
    @IBOutlet weak var rupee: UILabel!
    var r = ""
    
    @IBOutlet weak var s: UILabel!
    var stop = ""
  
    
    @IBOutlet weak var field1: UITextField!
    
    
    @IBOutlet weak var field2: UITextField!
    
    
    @IBOutlet weak var field3: UITextField!
    
    
    @IBOutlet weak var boardingfrom: UILabel!
    
    @IBOutlet weak var boardingto: UILabel!
    
    
    @IBOutlet weak var datepickertxt: UITextField!
    var date = ""
    let datepicker = UIDatePicker()
    
    
    
    func textFieldShouldReturn(field1: UITextField) -> Bool {
        field1.resignFirstResponder()
        return true
    }
    func textFieldShouldReturn(field2: UITextField) -> Bool {
        field2.resignFirstResponder()
        return true
    }
    func textFieldShouldReturn(field3: UITextField) -> Bool {
        field3.resignFirstResponder()
        return true
    }
    
    
    func createdatepicker(){
        
        
        datepicker.datePickerMode = .date
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        
        let donebutton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector (donebuttonpressed) )
        toolbar.setItems([donebutton], animated: false)
        
        datepickertxt.inputAccessoryView = toolbar
        
        datepickertxt.inputView = datepicker
        
        
        
        
        
    }
    
    @objc func donebuttonpressed(){
        let dateformatter = DateFormatter()
        dateformatter.dateStyle = .short
        dateformatter.timeStyle = .none
        datepickertxt.text  = dateformatter.string(from: datepicker.date)
        self.view.endEditing(true)
        
    }
    
    
    @IBAction func btn2(_ sender: Any) {
        
        performSegue(withIdentifier: "third", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dextv2 = segue.destination as! boardingpassViewController
        dextv2.bcity =  boardingfrom.text!
        dextv2.bcityb = boardingto.text!
        dextv2.pname = field1.text!
        dextv2.dt = datepickertxt.text!
        
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

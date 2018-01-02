//
//  boardingpassViewController.swift
//  project
//
//  Created by Ekansh Anand on 24/11/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit

class boardingpassViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bfroma.text = bcity
        btoa.text = bcityb
        passengername.text = pname
        datelabel.text = dt
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var bfroma: UILabel!
    var bcity = ""
    
    
    @IBOutlet weak var btoa: UILabel!
    var bcityb = ""
    
    
    @IBOutlet weak var passengername: UILabel!
    var pname = ""
    
    
    @IBOutlet weak var datelabel: UILabel!
    var dt = ""
    
    
    @IBAction func btn3(_ sender: Any) {
        performSegue(withIdentifier: "fourth", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dextv3 = segue.destination as! lastpageViewController
        dextv3.ld = datelabel.text!
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

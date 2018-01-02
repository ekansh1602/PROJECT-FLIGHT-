//
//  detailViewController.swift
//  project
//
//  Created by Ekansh Anand on 23/11/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fr1.text = fone
        to1.text = tone
        fr2.text = ftwo
        to2.text = ttwo
        fr3.text = fthree
        to3.text = tthree

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var fr1: UILabel!
    var fone = ""
    
    @IBOutlet weak var to1: UILabel!
    var tone = ""
    
    @IBOutlet weak var fr2: UILabel!
    var ftwo = ""
    
    @IBOutlet weak var to2: UILabel!
    var ttwo = ""
    
    @IBOutlet weak var fr3: UILabel!
    var fthree = ""
    
    @IBOutlet weak var to3: UILabel!
    var tthree = ""
    
    
    @IBOutlet weak var t1: UILabel!
    
    @IBOutlet weak var t2: UILabel!
    
    @IBOutlet weak var duration: UILabel!

    @IBOutlet weak var type: UILabel!
    
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var speed: UILabel!
    
    
    @IBOutlet weak var place1: UILabel!
    

    @IBAction func btn1(_ sender: Any) {
        
        performSegue(withIdentifier: "second", sender: self)
    }
    
   
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dextvc = segue.destination as! detail2ViewController
        dextvc.name = place1.text!
        dextvc.name1 = to1.text!
        dextvc.det = t1.text!
        dextvc.art = t2.text!
        dextvc.hr = duration.text!
        dextvc.re = type.text!
        dextvc.r = price.text!
        dextvc.stop = speed.text!
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

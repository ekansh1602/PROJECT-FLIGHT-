//
//  lastpageViewController.swift
//  project
//
//  Created by Ekansh Anand on 24/11/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit
import MapKit
import  CoreLocation

class lastpageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lastdate.text = ld
    }
    
    @IBOutlet weak var map: MKMapView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var lastdate: UILabel!
    var ld = ""

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

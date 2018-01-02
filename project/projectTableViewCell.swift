//
//  projectTableViewCell.swift
//  project
//
//  Created by Ekansh Anand on 23/11/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit

class projectTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet weak var froma: UILabel!
    @IBOutlet weak var fromb: UILabel!
    @IBOutlet weak var toa: UILabel!
    @IBOutlet weak var tob: UILabel!
    @IBOutlet weak var fromimage: UIImageView!
    @IBOutlet weak var toimage: UIImageView!
    

    @IBOutlet weak var adultlabel: UILabel!
    @IBOutlet weak var adult: UIStepper!
    @IBAction func adultaction(_ sender: Any) {
        adultlabel.text = "\(Int(adult.value))"
    }
  
    @IBOutlet weak var childlabel: UILabel!
    @IBOutlet weak var child: UIStepper!
    @IBAction func childaction(_ sender: Any) {
        childlabel.text = "\(Int(child.value))"
    }
    

    @IBOutlet weak var infantlabel: UILabel!
    @IBOutlet weak var infant: UIStepper!
    @IBAction func infant(_ sender: Any) {
        infantlabel.text = "\(Int(infant.value))"
    }
    
    @IBOutlet weak var message: UILabel!
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if (sender.isOn == false){
            
            message.text = "You can save more in round trip!!!"
        }
        else{
            message.text = "ROUND TRIP"
        }
    }
    
    
    
}

//
//  projectTableViewController.swift
//  project
//
//  Created by Ekansh Anand on 23/11/17.
//  Copyright © 2017 Avi Srivastava. All rights reserved.
//

import UIKit

class projectTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    var city1 = ["Bangalore","Delhi","Chennai","Mumbai"]
    var city1code = ["BLR","DEL","MAA","BOM"]
    var city2 = ["Chennai","Lucknow","Goa","Vizag"]
    var city2code = ["MAA","LKO","GOI","VTZ"]
    var imag1 = ["blr.jpg","delhi.jpg","chennai.jpg","mumbai.jpg"]
    var imag2 = ["chennai.jpg","lko.jpg","Goa.jpg","Vizag.jpg"]

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return city1.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! projectTableViewCell
        cell.froma.text = city1[indexPath.row]
        cell.fromb.text = city1code[indexPath.row]
        cell.toa.text = city2[indexPath.row]
        cell.tob.text = city2code[indexPath.row]
        cell.fromimage.image = UIImage(named: imag1[indexPath.row])
        cell.toimage.image = UIImage(named: imag2[indexPath.row])
        
        


        return cell
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "first"{
            if let indexpath = tableView.indexPathForSelectedRow{
                let control = segue.destination as! detailViewController
                control.fone = city1code[indexpath.row]
                control.tone = city2code[indexpath.row]
                control.ftwo = city1code[indexpath.row]
                control.ttwo = city2code[indexpath.row]
                control.fthree = city1code[indexpath.row]
                control.tthree = city2code[indexpath.row]
                
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

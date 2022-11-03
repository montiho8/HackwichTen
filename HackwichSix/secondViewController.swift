//
//  secondViewController.swift
//  HackwichSix
//
//  Created by Dominique Cortez-Montiho on 10/19/22.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    // var dreamVacationsArray = ["Japan", "Australia","Canada","Singapore","Bali"]
    
    // Hackwich 10 Problem Set 1
    var restaurantLocationsArray = ["Kapolei Kalapawai"]
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Hackwich #10:
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurantImages")
            as! [String]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
       // return dreamVacationsArray.count
        return restaurantLocationsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
     //   let text = dreamVacationsArray[indexPath.row]
        let text = restaurantLocationsArray[indexPath.row]
        
        cell?.textLabel?.text = text
        
        return cell!
        
    }
  
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let s1 = segue.destination as! detailViewController
        let imageIndex = tableView.indexPathForSelectedRow?.row
        s1.imagePass = restaurantImageData[imageIndex!]
        
    }
    
    
    
    
}

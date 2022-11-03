//
//  ViewController.swift
//  HackwichSix
//
//  Created by Dominique Cortez-Montiho on 10/19/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Sara", "Nicole","Grant"]
    
    var dreamVacationsArray = ["Japan", "Australia","Canada","Singapore","Bali"]
    
    var friendsHomeArray = ["Kapolei","Kaneohe","Wahiawa"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myFriendsArray.count
        
       // return dreamVacationsArray.count
        
       // return friendsHomeArray.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = myFriendsArray[indexPath.row]
        
        cell?.textLabel?.text = text
        // cell?.detailTextLabel?.text = dreamVacationsArray[indexPath.row]
        cell?.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell!
        
        
        
    }
    
    @IBAction func nextButtonPressed(_ sender: Any) {
    }
    
 

}


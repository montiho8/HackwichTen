//
//  secondViewController.swift
//  HackwichSix
//
//  Created by Dominique Cortez-Montiho on 10/19/22.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dreamVacationsArray = ["Japan", "Australia","Canada","Singapore","Bali"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return dreamVacationsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        
        let text = dreamVacationsArray[indexPath.row]
        
        cell?.textLabel?.text = text
        
        return cell!
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

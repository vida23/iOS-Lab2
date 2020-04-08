//
//  TableViewController.swift
//  iOSLab2
//
//  Created by Vida Rashidi on 2019-12-05.
//  Copyright © 2019 Vida Rashidi. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var data:[[Experiences]] = [[]]
    
    let headerTitles = ["Work","Education"]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as UITableViewDelegate
        tableView.dataSource = self as UITableViewDataSource
        
        tableView.reloadData()
        
        }
    }

extension TableViewController:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section < headerTitles.count {
            return headerTitles[section]
        }
        
        return nil
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return DataHandler.instance.experiences.count
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        DataHandler.instance.experiences[section].count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell{
            let experience:
                Experiences = DataHandler.instance.experiences[indexPath.section][indexPath.row]
            cell.cellImage.image = UIImage(named: experience.image)
            cell.cellDesc.text = experience.describtion
            cell.cellDate.text = experience.date
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:IndexPath){
        DataHandler.instance.setSelectedExperienceId(withIndex: indexPath.row, withIndex: indexPath.section)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
}

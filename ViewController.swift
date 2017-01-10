//
//  ViewController.swift
//  Times Tables
//
//  Created by Victor Elizalde on 1/10/17.
//  Copyright © 2017 Victor Elizalde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        table.reloadData()
        
    }
    
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 50
        
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(Int(slider.value) * (indexPath.row + 1))
        
        return cell
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


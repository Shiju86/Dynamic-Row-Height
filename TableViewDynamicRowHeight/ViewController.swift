//
//  ViewController.swift
//  TableViewDynamicRowHeight
//
//  Created by Shiju Varghese on 22/04/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var tableview: UITableView!
  
  let data = ["We provide end-to-end services and solutions in mobility, omni-channel, IoT and cloud technology. Armed with a large team of experts in consulting, UX design, application development, integration and testing, along with experience delivering projects worldwide, in mobility and cloud, we offer a wide range of services across industry verticals. We work with the world's top brands, fortune 1000 companies, Multinational companies and innovative start-ups. We have offices in the United States, the United Kingdom and India.", "We noticed a recent login for your account @shiju.", "Your account may have been compromised and you should take a few steps to make sure your account is secure. To start, reset your password now.", "Links in this email will start with “https://” and contain “twitter.com.” Your browser will also display a padlock icon to let you know a site is secure."]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableview.delegate = self
    tableview.dataSource = self
   
    tableview.estimatedRowHeight = 50
    tableview.rowHeight = UITableViewAutomaticDimension
    
  }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return data.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
    
    cell.textLabel?.text = data[indexPath.row]
    cell.textLabel?.numberOfLines = 0
    cell.textLabel?.textAlignment = .justified
    
    return cell
    
  }
  
}



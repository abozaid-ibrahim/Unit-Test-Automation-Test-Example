//
//  ViewController.swift
//  Unit Testing
//
//  Created by abuzeid ibarhim on 10/4/17.
//  Copyright © 2017 abuzeid ibarhim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 final var count  = 10
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem?.target =   self
        self.navigationItem.rightBarButtonItem?.action =   #selector(addItem(sender:))
        self.navigationItem.rightBarButtonItem?.tintColor = UIColor.red
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @objc func addItem(sender:Any){
        count   =  count + 1
        self.tableview.reloadData()
        
    }
    
    
    
    @IBOutlet weak var sumItemView: UIBarButtonItem!
    @IBAction func calculateAction(_ sender: Any) {
        
        sumItemView.title = "\(getSum())"
    }
    
    func getSum()->Int{
        return count
    }

}
extension ViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = String.randomString(length: indexPath.row + 1 * 2)
        cell.imageView?.image = #imageLiteral(resourceName: "sleep")
        return cell
    }
    
    
    
}

extension String{
    static func randomString(length: Int) -> String {
        
        let letters : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let len = UInt32(letters.length)
        
        var randomString = ""
        
        for _ in 0 ..< length {
            let rand = arc4random_uniform(len)
            var nextChar = letters.character(at: Int(rand))
            randomString += NSString(characters: &nextChar, length: 1) as String
        }
        
        return randomString
    }
}

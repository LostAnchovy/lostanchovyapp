//
//  fishViewController.swift
//  The Lost Anchovy
//
//  Created by keith Nguyen on 3/3/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit

class fishViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fishCell") as! fishTableViewCell
        cell.fishLabel?.text = fishdetail[indexPath.row].1
        return cell
    }
    
    let fishdetail = [
        ("calihalibut", "California Halibut typically start their migration into the bay around early spring. They stay in the bay unitl late summer. They can also be found outside in the ocean"),
        ("salmon", "This is test text"),
    ]
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView?.delegate = self
        tableView?.dataSource = self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

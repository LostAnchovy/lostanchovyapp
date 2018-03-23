//
//  locationViewController.swift
//  The Lost Anchovy
//
//  Created by keith Nguyen on 2/27/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit

    class locationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
        let header = ["Fishing Locations"]
        var myIndex = 0
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return details.count
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            return header[section]
        }
        
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "locationCell") as! locationTableViewCell
            
    
            // cell.locationImage.layer.cornerRadius = cell.locationImage.frame.height / 2
            // makes the photo into a circle
            cell.locationLabel?.text = details[indexPath.row].1
            // takes the data from the details array and places it inside the photolabel
            cell.locationImage?.image = UIImage(named:details[indexPath.row].0)
            //takes images from the assets.xcasset and uses the data fromt the elements
            cell.headerLabel?.text = details[indexPath.row].0
            return cell
        }
        
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
        
        func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 50
        }
        
        func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
            let delete = UITableViewRowAction(style: .destructive, title: "remove") { _,_ in (option(), indexPath)
            }
            return[delete]
        }
        
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myIndex = indexPath.row
            performSegue(withIdentifier: "locationSegue", sender: self)
            
        }
        
        @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
            dismiss(animated: true, completion: nil)
        }
        
        let details = [
            ("paradise","Nestled on the shore, this 19-acre park features sweeping Bay views, colorful poplar trees, wildflowers, rolling hillsides, and a redwood grove. Paradise Park is a popular fishing spot for halibut, sturgeon, perch, and strip bass."),
            ("ARW","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("bakerbeach","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("oysterpoint","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("chinacamp","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("hmb","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("santacruz","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("berkeleymarina","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("monterey","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("mosslanding","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("shermanlake","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("beldenslanding","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
            ("nickscove","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),]
        
        
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

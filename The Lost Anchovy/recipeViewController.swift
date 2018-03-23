//
//  Custom2ViewController.swift
//  TableViews
//
//  Created by keith Nguyen on 2/19/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let header = ["Recipe"]
    let photos = ["clams","tumyum", "salmon", "halibut"]
    var myIndex = 1
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            return header[section]
//        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell2") as! recipeTableViewCell
        
        
        // cell.photoImage.layer.cornerRadius = cell.photoImage.frame.height / 2
        // makes the photo into a circle
        cell.recipeLabel?.text = details[indexPath.row].1
        // takes the data from the details array and places it inside the photolabel
        cell.recipeImage?.image = UIImage(named:details[indexPath.row].0)
        //takes images from the assets.xcasset and uses the data fromt the elements
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let delete = UITableViewRowAction(style: .destructive, title: "remove") { _,_ in (option(), indexPath)
        }
        return[delete]
    }


    @IBOutlet weak var tableView: UITableView!
    
    let details = [
        ("thaiclams","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","The classic, highly aromatic Thai seasoning for seafood includes lemongrass, galangal, lime leaf, hot pepper and coconut milk. Spicy and refreshing, the bright-tasting broth is a mix of sweet, salty, sour and herbaceous. You may substitute mussels or prawns for the clams."),
        ("tumyum","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","The words tom yam are derived from two Thai words. Tom refers to the boiling process, while yam refers to a Thai spicy and sour salad. Indeed, tom yum is characterised by its distinct hot and sour flavours, with fragrant spices and herbs generously used in the broth. The basic broth is made of stock and fresh ingredients such as lemongrass, kaffir lime leaves, galangal, lime juice, fish sauce, and crushed chili peppers."),
        ("salmon","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", "Fresh salmon fillets -or steaks- make a fast and easy meal. Not only are they great for a weekly night dinner, but they are also special enough for a dinner party menu! The health benefits of salmon cannot be overstated. It's an excellent source of Omega-3 fatty acids, and baking does not decrease that content. In case you were wondering, salmon is also rich in B12, vitamin D, and selenium, and is low in mercury."),
        ("halibut","It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","This crumb-topped halibut is a fast and simple way to prepare the mild, delicious fish. The tasty, buttery crumb topping gives the halibut nice flavor and texture, and it bakes in just minutes.Choose Pacific or Alaskan halibut fillets or steaks for this recipe. Wild Atlantic halibut is an endangered species, but farmed Atlantic halibut can be used.")]
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myIndex = indexPath.row
            performSegue(withIdentifier: "recipeSegue", sender: self)
    
        }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        tableView?.delegate = self
        tableView?.dataSource = self
        super.viewDidLoad()
        
    }
    
    
    
    
}

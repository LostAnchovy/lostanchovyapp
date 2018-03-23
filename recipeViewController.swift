//
//  recipeViewController.swift
//  thelostanchovy
//
//  Created by keith Nguyen on 3/3/18.
//  Copyright © 2018 Lost_Anchovy LLC. All rights reserved.
//

import UIKit

class recipeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipeName.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! CollectionViewCell
        
        cell.recipeImage?.image = recipeImage[indexPath.row]
        cell.recipeName?.text = recipeName[indexPath.row]
        cell.recipeDescription?.text = recipeDescription[indexPath.row]
        
        
        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.5)
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        return cell
    }
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    let recipeName = ["Tumyum Soup", "Grille Salmon", " Poached Halibut", "Thaiclams"]
    
    let recipeImage = [UIImage(named:"tumyum"), UIImage(named:"salmon"), UIImage(named:"halibut"),UIImage(named:"thaiclams")]
    
    let recipeDescription = ["The beautiful island of hawaii", "Come join us in the warm and majestic islands of fiji. Her you will enjoy the wonders of the island. The hospitality of the locals and the food of the island", "The warm waters of Cuba will leave you breathless. Take a cruise and or smoke a cigar. The 7 year rum is our speciality.", "The warm waters of Cuba will leave you breathless. Take a cruise and or smoke a cigar. The 7 year rum is our speciality."]

    
    override func viewDidLoad() {
        collectionView?.delegate = self
        collectionView.dataSource = self
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

//
//  ViewController.swift
//  CountryCell
//
//  Created by Esna nur Yılmaz on 20.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var countries:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let design:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        
        let genislik = self.collectionView.frame.size.width
        
        design.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        design.itemSize = CGSize(width: (genislik-30)/3, height: (genislik-30)/3)
        
        design.minimumInteritemSpacing = 5
        design.minimumLineSpacing = 5
        
        collectionView!.collectionViewLayout = design
        
        countries = ["Turkey","France","Germany","Italy","Japan","Brazil","Canada","Mexico","Spain","India","Australia","China","Russia","Argentina","Sweden","Norway","Denmark","Greece","Egypt","Portugal","Netherlands","Belgium","Switzerland","Austria","NewZealand","Finland","Ireland","South","Korea","Poland","Hungary","Thailand","Malaysia","Indonesia","Vietnam","Philippines"]
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDelegate , UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryCell", for: indexPath) as! CollectionViewCountryCell
         
        cell.cellLabel.text = countries[indexPath.row]
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(countries) seçildi")
    }
}

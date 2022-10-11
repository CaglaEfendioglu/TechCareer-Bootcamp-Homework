//
//  ViewController.swift
//  Odev6
//
//  Created by Cagla Efendioglu on 7.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    var categoriesList = [Categories]()
    var screenCategoriesList = [ScreenCategories]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let c1 = Categories(imageName: "gununfirsati", name: "Gunun Firsatlari")
        let c2 = Categories(imageName: "ayniguncicek", name: "Ayni Gun Cicek")
        let c3 = Categories(imageName: "aynigunhediyeler", name: "Ayni Gun Hediyeler")
        let c4 = Categories(imageName: "yenilebilircicek", name: "Yenilebilir Cicek")
        let c5 = Categories(imageName: "guller", name: "Guller")
        let c6 = Categories(imageName: "aynigunteslimtaki", name: "Ayni Gun Teslim Taki")
        let c7 = Categories(imageName: "dogumgunu", name: "Dogum Gunu")
        let c8 = Categories(imageName: "hediyesetleri", name: "Hediye Setleri")
        let c9 = Categories(imageName: "meyvearanjmanlari", name: "Meyve Aranjmanlari")
        let c10 = Categories(imageName: "viabonte", name: "ViaBonte")
        let c11 = Categories(imageName: "lezzetlicikolatalar", name: "Lezzetli Cikolatalar")
        let c12 = Categories(imageName: "orkide", name: "Orkide")
        let c13 = Categories(imageName: "parfum", name: "Parfum")
        let c14 = Categories(imageName: "kisiyeozelkolyeler", name: "Kisiye Ozel Kolyeler")
        let c15 = Categories(imageName: "hediyesetlerii", name: "Hediye Setleri")
        let c16 = Categories(imageName: "coksatanlar", name: "Cok Satanlar")
        let c17 = Categories(imageName: "aynigunbitki", name: "Ayni Gun Bitki")
        
        categoriesList.append(c1)
        categoriesList.append(c2)
        categoriesList.append(c3)
        categoriesList.append(c4)
        categoriesList.append(c5)
        categoriesList.append(c6)
        categoriesList.append(c7)
        categoriesList.append(c8)
        categoriesList.append(c9)
        categoriesList.append(c10)
        categoriesList.append(c11)
        categoriesList.append(c12)
        categoriesList.append(c13)
        categoriesList.append(c14)
        categoriesList.append(c15)
        categoriesList.append(c16)
        categoriesList.append(c17)
        
        let sc1 = ScreenCategories(imageName: "image1")
        let sc2 = ScreenCategories(imageName: "image2")
        let sc3 = ScreenCategories(imageName: "image3")
        let sc4 = ScreenCategories(imageName: "image4")
        let sc5 = ScreenCategories(imageName: "image5")
        let sc6 = ScreenCategories(imageName: "image6")
        let sc7 = ScreenCategories(imageName: "image7")
        
        screenCategoriesList.append(sc1)
        screenCategoriesList.append(sc2)
        screenCategoriesList.append(sc3)
        screenCategoriesList.append(sc4)
        screenCategoriesList.append(sc5)
        screenCategoriesList.append(sc6)
        screenCategoriesList.append(sc7)
        
        searchBar.searchTextField.backgroundColor = .white
        searchBar.layer.cornerRadius = 8
        searchBar.layer.borderColor = UIColor.darkGray.cgColor
        searchBar.layer.borderWidth = 1.5
        
        
        tableView.separatorColor = UIColor(white: 0.95, alpha: 5)
        tableView.backgroundColor = UIColor(white:15, alpha: 1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoriesList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let category = categoriesList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imageCell.image = UIImage(named: category.imageName!)
        cell.labelCell.text = category.name
        return cell
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return screenCategoriesList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let category = screenCategoriesList[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        
        cell.tableViewImage.image = UIImage(named: category.imageName!)
        cell.selectionStyle = .none
        return cell
    }
    
}



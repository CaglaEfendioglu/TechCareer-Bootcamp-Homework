//
//  ViewController.swift
//  Odev 3
//
//  Created by Cagla Efendioglu on 28.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeonardoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "VILLA"
        let appearance = UINavigationBarAppearance()
    
        appearance.backgroundColor = UIColor(named: "renk3")
      //  appearance.titleTextAttributes = [.foregroundColor: UIColor(named: "renk2")!, .font: UIFont(name: "ArefRuqaaInk-Regular", size: 22)!]
        navigationController?.navigationBar.barStyle = .default
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        LeonardoImageView.layer.cornerRadius = 40.0
    }


}


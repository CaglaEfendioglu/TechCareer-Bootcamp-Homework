//
//  ViewController.swift
//  Odev4
//
//  Created by Cagla Efendioglu on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func buttonGitA(_ sender: Any) {
        performSegue(withIdentifier: "anasayfaTob", sender: nil)
        print("Ansayfadan A'ya gecis oldu")
    }
    
    

}


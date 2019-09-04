//
//  ViewController.swift
//  ChuyenManStoryBoard
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextHome(_ sender: Any){
        let homeVC = UIStoryboard.init(name: "Home", bundle: Bundle.main).instantiateViewController(withIdentifier: "homeID") as? HomeVC
        present(homeVC!, animated: true, completion: nil)
        
    }

}


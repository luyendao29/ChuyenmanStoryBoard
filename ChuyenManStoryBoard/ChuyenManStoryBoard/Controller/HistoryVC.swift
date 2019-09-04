//
//  HistoryVC.swift
//  ChuyenManStoryBoard
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class HistoryVC: UIViewController {
    @IBOutlet weak var historyLabel: UILabel!
    var history: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if history != nil {
            historyLabel.text = history
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackMain(_ sender: Any){
        let mainVC = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "mainID") as? MainVC
        present(mainVC!, animated: true, completion: nil)
    }

}

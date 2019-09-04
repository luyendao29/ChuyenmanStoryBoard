//
//  PayVC.swift
//  ChuyenManStoryBoard
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class PayVC: UIViewController {
    @IBOutlet weak var payLabel: UILabel!
    var payClosure: ((_ data: String) -> Void)?
    
    
    var product: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if product != nil {
            payLabel.text = product
            payClosure?(product!)
        }

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ClickedToHistory(_ sender: Any){
        if product != nil {
            let historyVC = UIStoryboard.init(name: "History", bundle: Bundle.main).instantiateViewController(withIdentifier: "historyID") as? HistoryVC
            historyVC?.history = product
            present(historyVC!, animated: true, completion: nil)
        }
        
    }

 
}

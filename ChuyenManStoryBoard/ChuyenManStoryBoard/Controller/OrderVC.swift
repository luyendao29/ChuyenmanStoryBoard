//
//  OrderVC.swift
//  ChuyenManStoryBoard
//
//  Created by Boss on 9/4/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class OrderVC: UIViewController {
    @IBOutlet weak var orderTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ClicktoPay(_ sender: Any){
        let payVC = UIStoryboard.init(name: "Pay", bundle: Bundle.main).instantiateViewController(withIdentifier: "payID") as? PayVC
        payVC?.product = orderTextField.text
        present(payVC!, animated: true, completion: nil)
        
    }

}

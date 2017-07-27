//
//  ProductDetailViewController.swift
//  EducationiOS
//
//  Created by swathi santi on 2017-07-25.
//  Copyright © 2017 MoxDroid. All rights reserved.
//

import UIKit
var arrayOfMyCart = [IPhone]()


class ProductDetailViewController: UIViewController {
    var objOfIphone = IPhone()


    @IBOutlet var pidlbl: UILabel!
    @IBOutlet var pnamelbl: UILabel!
    @IBOutlet var qntylbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btn(_ sender: Any) {
        
        arrayOfMyCart.append(objOfIphone)
        
        let alert = UIAlertController(title: "Alert msg", message: "added successfully.!!!", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(okBtn)
        self.present(alert, animated: true, completion: nil)
    }

}

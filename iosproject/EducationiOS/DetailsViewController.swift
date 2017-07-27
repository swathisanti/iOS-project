//
//  DetailsViewController.swift
//  
//
//  Created by swathi santi on 2017-07-20.
//
//

import UIKit

class DetailsViewController: UIViewController {
    @IBOutlet var idlbl: UILabel!

    @IBOutlet var qntylbl: UILabel!
    @IBOutlet var namelbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var idtxt: UITextField!
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
    @IBOutlet var savebtn: UIBarButtonItem!
    @IBAction func subbtn(_ sender: UIButton) {
        self.performSegue(withIdentifier: "listScr", sender: self)
        
    }
    
    
    
    
    @IBOutlet var qntytxt: UITextField!

    @IBOutlet var nametxt: UITextField!
}

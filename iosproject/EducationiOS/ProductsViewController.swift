//
//  ProductsViewController.swift
//  
//
//  Created by swathi santi on 2017-07-25.
//
//

import UIKit
var chk = "user"
var selectedName : IPhone!

class ProductsViewController: UIViewController,UITableViewDelegate{
     var productObj : User!

    @IBOutlet var namelbl: UILabel!
    
    var objIPhone = IPhone()
    var arrayOfIPhone = [IPhone]()
    
    
    
    var sectionTitle = ["IPhone"]
    

    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        namelbl.text = "WELCOME..." + productObj.userName
        arrayOfIPhone = objIPhone.listOfIPhone()


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfIPhone.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var tempIPhone : IPhone!
        tempIPhone = arrayOfIPhone[indexPath.row]
        cell.nameLbl.text = tempIPhone.iPhoneName
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = arrayOfIPhone[indexPath.row]
        
        self.performSegue(withIdentifier: "productDetailsScr", sender: self)
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "productDetailsScr"{
            
            var nextVC = segue.destination as! ProductDetailViewController
            nextVC.objOfIphone = selectedName
            
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBOutlet var addbtn: UIBarButtonItem!
    @IBAction func addbttn(_ sender: Any) {
        self.performSegue(withIdentifier: "productDetailsScr", sender: self)

    }

}

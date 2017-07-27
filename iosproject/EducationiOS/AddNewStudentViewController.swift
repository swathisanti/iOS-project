//
//  AddNewStudentViewController.swift
//  EducationiOS
//
//  Created by Pritesh Patel on 2017-07-11.
//  Copyright © 2017 MoxDroid. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class AddNewStudentViewController: UIViewController {

    @IBOutlet var pnamelbl: UILabel!
   
    @IBOutlet var qntylbl: UILabel!

    @IBOutlet var idlbl: UILabel!
    @IBOutlet var nametxt: UITextField!
    @IBOutlet var qntytxt: UITextField!

    @IBOutlet var idtxt: UITextField!
   var refStudent: DatabaseReference!
    override func viewDidLoad() {
        super.viewDidLoad()
        //FirebaseApp.configure()
        //getting a reference to the node artists
        refStudent = Database.database().reference().child("products");

        // Do any additional setup after loading the view.
        //updateStudent()
        //deleteStudent(id: "-KomaHnqStBFhCgAE9i1")
        //getproductRecords()
        addProduct()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnInsert(_ sender: UIButton) {
        
        addProduct()
        self.performSegue(withIdentifier: "listscr", sender: self)
    }
    
    func addProduct(){
        //generating a new key inside artists node
        //and also getting the generated key
        let key = refStudent.childByAutoId().key
        
        
        //creating artist with the given values
        let product = ["id":key,
                      "pid":"1",
                      "productName": "iphone",
                      "quantity": 2
        ] as [String : Any]
        
        //adding the artist inside the generated unique key
        refStudent.child(key).setValue(product)
        
        //displaying message
        print("product Added")
    }
    
    func getproductRecords()
    {
        //observing the data changes
        refStudent.observe(DataEventType.value, with: { (snapshot) in
            
            //if the reference have some values
            if snapshot.childrenCount > 0 {
                
                //iterating through all the values
                for student in snapshot.children.allObjects as! [DataSnapshot] {
                    //getting values
                    let studentObject = student.value as? [String: AnyObject]
                    let id  = studentObject?["id"]
                    let productId  = studentObject?["pid"]
                    let productName  = studentObject?["firstName"]
                    let quantity = studentObject?["quantity"]
                    print("\(String(describing: id)) -- \(String(describing: productId)) -- \(productName) -- \(quantity)")
                }
            
            }
        })
    }
    
    func updateproduct(){
        //generating a new key inside artists node
        //and also getting the generated key
        let key = "-KomaHnqStBFhCgAE9i1"
        //creating artist with the given values
        let product = ["id":key,
                        "pid":"2",
                       "productName": "laptop",
                       "quantity": 3
        ] as [String : Any]
        
        //adding the artist inside the generated unique key
        refStudent.child(key).setValue(product)
        
        //displaying message
        print("product Updated")
    }
    
    func deleteStudent(id:String){
        refStudent.child(id).setValue(nil)
        
        //displaying message
        print("product Deleted")
    }

    @IBAction func btnLogout(_ sender: UIBarButtonItem) {
        try! Auth.auth().signOut()
        if let storyboard = self.storyboard {
            let vc = storyboard.instantiateViewController(withIdentifier: "SignInViewController");           self.present(vc, animated: false, completion: nil)
        }
    }
}

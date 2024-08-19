//
//  SubmitViewController.swift
//  CRUD_Form_UIKit2
//
//  Created by Arrick Russell Adinoto on 17/08/24.
//

import UIKit

class SubmitViewController: UIViewController {

    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var formBlackContainer: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Modify Desain untuk form Black Container di Storyboard
        formBlackContainer.layer.cornerRadius = 10
        formBlackContainer.layer.shadowColor = UIColor.black.cgColor
        formBlackContainer.layer.shadowOpacity = 0.2
        formBlackContainer.layer.shadowOffset = .zero
        formBlackContainer.layer.shadowRadius = 10
        submitBtn.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func submitName(_ sender: Any) {
        createItem(name: textField!.text!)
        textField!.text = ""
    }
    
    func createItem(name: String){
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
        
        do{
            try context.save()
        }
        catch{
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

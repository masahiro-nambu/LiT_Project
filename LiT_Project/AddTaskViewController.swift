//
//  AddTaskViewController.swift
//  LiT_Project
//
//  Created by 南部　匡寛 on 2016/02/20.
//  Copyright © 2016年 Masahiro Nambu. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet var taskTextField1: UITextField!
    @IBOutlet var taskTextField2: UITextField!
    @IBOutlet var taskTextField3: UITextField!
    
    var taskArray: [AnyObject] = []
    let taskData: NSUserDefaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveTask() {
        //let taskList = [taskTextField1.text!, taskTextField2.text!, taskTextField3.text!]
        
        
        taskArray.append(taskTextField1.text!)
        taskArray.append(taskTextField2.text!)
        taskArray.append(taskTextField3.text!)
        taskData.setObject(taskArray, forKey: "Task")
        taskData.synchronize()
        
        print(taskData.arrayForKey("Task"))
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

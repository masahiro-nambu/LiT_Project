//
//  taskListViewController.swift
//  LiT_Project
//
//  Created by 南部　匡寛 on 2016/02/20.
//  Copyright © 2016年 Masahiro Nambu. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController {
    @IBOutlet var taskLabel1: UILabel!
    @IBOutlet var taskLabel2: UILabel!
    @IBOutlet var taskLabel3: UILabel!
    
    @IBOutlet var doneTaskButton1: UIButton!
    @IBOutlet var doneTaskButton2: UIButton!
    @IBOutlet var doneTaskButton3: UIButton!
    
    var taskArray: [AnyObject] = []
    var doneTask1: Bool = false
    var doneTask2:Bool = false
    var doneTask3:Bool = false
    let saveData = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ((saveData.arrayForKey("Task")) != nil){
            
            let objects = saveData.objectForKey("Task") as? NSArray
            
            var taskList: AnyObject
            
            for taskList in objects!{
                taskArray.append(taskList as! NSString)
            }
            
            taskLabel1.text = taskArray[0] as! String
            taskLabel2.text = taskArray[1] as! String
            taskLabel3.text = taskArray[2] as! String
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if saveData.arrayForKey("TASK") != nil {
            taskArray = saveData.arrayForKey("TASK")!
        }
    }
    
    @IBAction func finishTask1() {
        if doneTask1 == false {
            doneTask1 = true
        }
        doneTaskButton1.hidden = true
        taskLabel1.hidden = true
    }
    
    @IBAction func finishTask2() {
        if doneTask1 == false {
            doneTask2 = true
        }
        doneTaskButton2.hidden = true
        taskLabel2.hidden = true
    }
    
    @IBAction func finishTask3() {
        if doneTask3 == false {
            doneTask3 = true
        }
        doneTaskButton3.hidden = true
        taskLabel3.hidden = true
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

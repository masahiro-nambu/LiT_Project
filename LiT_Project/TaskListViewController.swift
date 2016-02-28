//
//  taskListViewController.swift
//  LiT_Project
//
//  Created by 南部　匡寛 on 2016/02/20.
//  Copyright © 2016年 Masahiro Nambu. All rights reserved.
//

import UIKit
import Social

class TaskListViewController: UIViewController {
    @IBOutlet var taskLabel1: UILabel!
    @IBOutlet var taskLabel2: UILabel!
    @IBOutlet var taskLabel3: UILabel!
    @IBOutlet var registeredView: UIImageView!
    
    @IBOutlet var doneTaskButton1: UIButton!
    @IBOutlet var doneTaskButton2: UIButton!
    @IBOutlet var doneTaskButton3: UIButton!
    
    var taskArray: [AnyObject] = []
    var doneTask1: Bool = false
    var doneTask2: Bool = false
    var doneTask3: Bool = false
    var timer: NSTimer!
    let saveData = NSUserDefaults.standardUserDefaults()
    
//    var photoImageViewData: NSUserDefaults

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if ((saveData.arrayForKey("Task")) != nil){
            
            let objects = saveData.objectForKey("Task") as? NSArray
            
            var taskList: AnyObject
            
            for taskList in objects!{
                taskArray.append(taskList as! NSString)
            }
            
            taskLabel1.text = taskArray[0] as? String
            taskLabel2.text = taskArray[1] as? String
            taskLabel3.text = taskArray[2] as? String
        }
        
        registeredView.image = showRegisteredImage()
        start()
        
//        let photoImage = photoImageViewData.dataForKey("Image")
        
        
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
    
    //SNSに投稿するメソッド(FacebookかTwitterのソースタイプが引数)
    func postToSNS(serviceType: String) {
        let photoImageView = showRegisteredImage()
        
        //SLComposeViewControllerのインスタンス化し、serviceTypeを指定
        let myComposeView = SLComposeViewController(forServiceType: serviceType)
        
        //投稿するテキストを指定
        myComposeView.setInitialText("PhotoMasterからの投稿")
        
        //投稿する画像を指定
        myComposeView.addImage(photoImageView)
        
        //myComposeViewの画面遷移
        self.presentViewController(myComposeView, animated: true, completion: nil)
    }
    
    func showRegisteredImage() -> UIImage{
        
        let data: NSData = saveData.objectForKey("Image") as! NSData
        let image: UIImage = UIImage(data: data)!
        
        return image
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
    
    
    func start() {
        timer = NSTimer.scheduledTimerWithTimeInterval(86400, target: self, selector: nil, userInfo: nil, repeats: true)
        timer.fire()
    }
    
    func checkDone() {
        if doneTask1 == false || doneTask2 == false || doneTask3 == false {
            
        }
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

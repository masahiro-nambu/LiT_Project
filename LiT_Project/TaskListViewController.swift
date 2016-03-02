//
//  taskListViewController.swift
//  LiT_Project
//
//  Created by 南部　匡寛 on 2016/02/20.
//  Copyright © 2016年 Masahiro Nambu. All rights reserved.
//

import UIKit
import AVFoundation

class TaskListViewController: UIViewController {
    @IBOutlet var taskLabel1: UILabel!
    @IBOutlet var taskLabel2: UILabel!
    @IBOutlet var taskLabel3: UILabel!
    @IBOutlet var registeredView: UIImageView!
    
    @IBOutlet var doneTaskButton1: UIButton!
    @IBOutlet var doneTaskButton2: UIButton!
    @IBOutlet var doneTaskButton3: UIButton!
    
    var taskArray: [AnyObject] = []
    let saveData = NSUserDefaults.standardUserDefaults()
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let soundFilePath = NSBundle.mainBundle().pathForResource("after", ofType: "mp3")!
        let fileURL = NSURL(fileURLWithPath: soundFilePath)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: fileURL)
        }catch {
            print("ファイルを読み込めませんでした。")
        }
        
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
    
    func showRegisteredImage() -> UIImage{
        
        let data: NSData = saveData.objectForKey("Image") as! NSData
        let image: UIImage = UIImage(data: data)!
        
        return image
    }
    
    @IBAction func finishTask1() {
        doneTaskButton1.hidden = true
        taskLabel1.hidden = true
        audioPlayer.play()
    }
    
    @IBAction func finishTask2() {
        doneTaskButton2.hidden = true
        taskLabel2.hidden = true
        audioPlayer.play()
    }
    
    @IBAction func finishTask3() {
        doneTaskButton3.hidden = true
        taskLabel3.hidden = true
        audioPlayer.play()
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

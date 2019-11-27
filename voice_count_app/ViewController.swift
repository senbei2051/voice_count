//
//  ViewController.swift
//  voice_count_app
//
//  Created by 林拓実 on 2019/11/09.
//  Copyright © 2019年 林拓実. All rights reserved.
//

import UIKit


//labelの縁取り線の色を変えるためにextentionを作る##################################
extension UIColor{
    class func label_color(red: Int, green: Int, blue: Int, alpha:CGFloat) -> UIColor{
        return UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
}//############################################################################

class ViewController: UIViewController {

    var count = 0
    
    @IBOutlet weak var counter: UILabel!
    
    //buttonを押すとlabelの数字が変動############################################
    @IBAction func minus(_ sender: Any) {
        count = count - 1
        counter.text = String(count)
    }
    
    @IBAction func plus(_ sender: Any) {
        count = count + 1
        counter.text = String(count)
    }
    
    @IBAction func reset(_ sender: Any) {
        count = 0
        counter.text = String(count)
    }
    //#######################################################################
    
    //labelの縁取り線の設定
    func change_counter_color(){
        counter.layer.borderWidth = 1.0
        counter.layer.borderColor = UIColor.label_color(red: 100, green: 50, blue: 90, alpha: 1).cgColor
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        change_counter_color()
        // Do any additional setup after loading the view, typically from a nib.
    }
}


//
//  ViewController.swift
//  Swift5CountUp1
//
//  Created by ゆり on 2021/03/09.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countLabel.text = String(count)
    }

    
    
    @IBAction func plus(_ sender: Any) {
        
        //カウントアップさせたい
        count = count + 1
        
        //ラベルに文字を反映したい（数字）
        countLabel.text = String(count)
        
        //数が１０になったら色を黄色にする
        if count >= 10{
            
            changeTextColor()
            
        }
        
        
    }
    
    
    
    @IBAction func minus(_ sender: Any) {
        
        //カウントダウンさせたい
        count = count - 1
        
        //ラベルに文字を反映したい（数字）
        countLabel.text = String(count)
        
        //０になったら色を白にする
        if count <= 0{
            
            resetColor()
            
        }
        
    }
    
    //新しいメソッドの作成
    func changeTextColor(){
        
        countLabel.textColor = .yellow
    }
    
    
    func resetColor(){
        
        countLabel.textColor = .white
        
    }
    
}


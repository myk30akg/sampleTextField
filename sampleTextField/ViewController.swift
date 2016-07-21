//
//  ViewController.swift
//  sampleTextField
//
//  Created by 竹田美雪 on 7/21/16.
//  Copyright © 2016 竹田美雪. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var textPreview: UILabel!
    @IBOutlet weak var myTextViewLabel: UILabel!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var identifyTest: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //中央寄せで入力する
        myTextField.textAlignment = NSTextAlignment.Center
        
        //タイトル
        let labelText = "TextField test"
        myLabel.text = labelText
        //プレビューの初期ラベル
        textPreview.text = "プレビュー"
    }
    //テキストフィールド内に文字が入力されたら
    @IBAction func tapReturnKey(sender: UITextField) {
        let str = sender.text
        if let r = str!.rangeOfString("test"){
            print("testです")
            identifyTest.text = "testです"
        }else{
            print(str)
            identifyTest.text = str
        }
        print("text=\(sender.text)")
        // let preview = String(myTextField.text)
        textPreview.text = sender.text //preview

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


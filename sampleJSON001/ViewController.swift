//
//  ViewController.swift
//  sampleJSON001
//
//  Created by AI Matsubara on 2016/05/03.
//  Copyright © 2016年 AI Matsubara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        //NSBundleは自分のアプリが動いている場所を返してくる
        var path = NSBundle.mainBundle().pathForResource("json", ofType: "txt")
        
        //pathは読み込むファイルの変数をセットしている・まだ暗号化された文字
        var jsondata = NSData(contentsOfFile: path!)
        
        
        //ここで変換される
        let jsonArray = (try! NSJSONSerialization.JSONObjectWithData(jsondata!, options: [])) as! NSArray
        
        for dat in jsonArray {
            
            //表示
            print("値=[\(dat)]")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


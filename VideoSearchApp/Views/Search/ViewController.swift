//
//  ViewController.swift
//  VideoSearchApp
//
//  Created by 大嶺舜 on 2019/08/11.
//  Copyright © 2019 大嶺舜. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func searchButton(_ sender: Any) {
        guard let txt = searchTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines), !txt.isEmpty else {
            print("不正な検索ワードです。")
            return
        }
        
        print("検索ワード:\(txt)")
        let nc = VideoListTableViewController.makeInstance(searchWord: txt)
        self.navigationController?.pushViewController(nc, animated: true)

    }
    
}


//
//  ViewController.swift
//  SimpleTableViewExample
//
//  Created by moxDroid on 2017-03-22.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnList1: UIButton!
    @IBOutlet weak var btnList2: UIButton!
    
    @IBAction func btnList1Clicked(_ sender: UIButton)
    {
        let lv1 = storyboard?.instantiateViewController(withIdentifier: "ListView1") as! ListView1
        navigationController?.pushViewController(lv1, animated: true)
    }
    
    @IBAction func btnList2Clicked(_ sender: UIButton)
    {
        let lv2 = storyboard?.instantiateViewController(withIdentifier: "ListView2") as! ListView2
        navigationController?.pushViewController(lv2, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController!.setNavigationBarHidden(true, animated: true);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


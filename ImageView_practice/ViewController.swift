//
//  ViewController.swift
//  ImageView_practice
//
//  Created by 권민수 on 2023/03/30.
//

import UIKit

class ViewController: UIViewController {
    var indexCount = 0
    var img: UIImage?
    var imgString = ["cat.jpeg", "cat2.png", "catworm.jpeg", "devilcat.jpeg", "fanxycat.jpeg", "hmmchitcat.jpeg", "ironcat.jpeg", "nerdcat.jpeg", "sadcat.jpeg", "sadcat2.jpeg"]
    
    @IBOutlet var btnPrev: UIButton!
    @IBOutlet var btnNext: UIButton!
    @IBOutlet var ImgView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        img = UIImage(named: imgString[0])
        
        ImgView.image = img
    }

    @IBAction func btnPrevAction(_ sender: UIButton) {
        indexCount -= 1
        if (indexCount < 0) {
            indexCount = 0
        }
        img = UIImage(named: imgString[indexCount])
        
        ImgView.image = img
    }
    
    
    @IBAction func btnNextAction(_ sender: UIButton) {
        indexCount += 1
        if (indexCount > 9) {
            indexCount = 9
        }
        img = UIImage(named: imgString[indexCount])
        
        ImgView.image = img
    }
    
}


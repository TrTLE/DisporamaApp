//
//  ViewController.swift
//  DiaporamaApp
//
//  Created by Admin on 23/05/2019.
//  Copyright © 2019 Alexis P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let maxIndex: Int = 4
    let minIndex: Int = 0
    var pictures: Array<UIImage> = []
    var index: Int = 0
    @IBOutlet weak var ui_DiapoPics: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        pictures.append(UIImage(imageLiteralResourceName:"UN"))
        pictures.append(UIImage(imageLiteralResourceName:"DEUX"))
        pictures.append(UIImage(imageLiteralResourceName:"TROIS"))
        pictures.append(UIImage(imageLiteralResourceName:"QUATRE"))
        pictures.append(UIImage(imageLiteralResourceName:"CINQ"))
        nextPictureUpdate()
    }

    func nextPictureUpdate(){
        self.ui_DiapoPics.image = pictures[index]
        
        if(index==maxIndex){
            index = 0
        }else{
            index+=1
        }
        
    }
    
    func previousPictureUpdate(){
        self.ui_DiapoPics.image = pictures[index]
        
        if(index==minIndex){
            index = 4
        }else{
            index-=1
        }
        
    }
    
    @IBAction func StartButtonTouched(_ sender: UIButton) {
        
        //Gérer le cas où le Timer est déjà démaarer, ducu le invalidate puis en relancer un nouveau
        
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { (_) in
            self.nextPictureUpdate()
        }
        
    }
    
}


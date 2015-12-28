//
//  GuidePage.swift
//  FKuber
//
//  Created by 冯凯 on 15/12/2.
//  Copyright © 2015年 冯凯. All rights reserved.
//

import UIKit

class GuidePage: FxBasePage
{
    
    @IBOutlet var backImageView:UIImageView?
    override func viewDidLoad()
    {
        super.viewDidLoad()
        doAnimation()

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
 
    }
    
    func doAnimation()
    {
        var images:[UIImage]=[]
        var image:UIImage?
        var imageName:String?
        
        for var index=0; index<=67; index++
        {
            imageName = "logo-"+String(format:"%03d",index)
            image = UIImage(named:imageName!)
            images.insert(image!, atIndex: index)
        }
        
//        var images:[UIImage]=[]
//        var image:UIImage?
//        var imageName:String?
//        
//        for var index=0; index<=67;index++ {
//            imageName = "logo-" + String(format: "%03d", index)
//            image = UIImage(named: imageName!)
//            
//            images.insert(image!, atIndex: index)
//        }
        
        
        backImageView?.animationImages = images
        backImageView?.animationRepeatCount = 1
        backImageView?.animationDuration = 5
        backImageView?.startAnimating()
    }


}

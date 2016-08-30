//
//  ViewController.swift
//  CoreImageFun
//
//  Created by Bao Nguyen on 8/30/16.
//  Copyright © 2016 Bao Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let fileURL = NSBundle.mainBundle().URLForResource("image", withExtension: "png")
        
        let beginImage = CIImage(contentsOfURL: fileURL!);
        
        let filter = CIFilter(name: "CISepiaTone")
        filter?.setValue(beginImage, forKey: kCIInputImageKey)
        filter?.setValue(0.5, forKey: kCIInputIntensityKey)
        
        let newImage = UIImage(CIImage: filter!.outputImage!)
        
        self.imageView.image = newImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


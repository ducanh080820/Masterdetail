//
//  DetailViewController.swift
//  Masterdetail
//
//  Created by Trần Đức Anh on 11/5/18.
//  Copyright © 2018 Trần Đức Anh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIScrollViewDelegate {

//    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    @IBOutlet weak var detailDescriptionScrollView: UIScrollView!
    @IBOutlet weak var myImageView: UIImageView!
    
    func configureView() {
        //Update the user interface for the detail item
        if let detail = detailImage {
            if let myImage = myImageView {
//                label.text = detail.description
               myImage.image = UIImage(named: detail)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
//        self.scrollView.maximumZoomScale = 5
//        self.scrollView.minimumZoomScale = 0.5
        detailDescriptionScrollView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.myImageView
    }
    
    var detailImage: String? {
        didSet {
            //Update the view
            configureView()
        }
    }

}

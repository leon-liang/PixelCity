//
//  PopVC.swift
//  PixelCity
//
//  Created by Leon Liang on 13/02/2018.
//  Copyright © 2018 Leon Liang. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var popImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    
    var passedImage: UIImage!
    var passedTitle: String!
    
    func initData(forImage image: UIImage, forTitle title: String) {
        self.passedImage = image
        self.passedTitle = title
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        titleLbl.text = passedTitle
        addDoubleTap()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }

}

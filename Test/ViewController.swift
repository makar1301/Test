//
//  ViewController.swift
//  Test
//
//  Created by mac on 29.03.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let sqrt = UIView()
        sqrt.layer.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        sqrt.layer.backgroundColor = UIColor.red.cgColor
        view.addSubview(sqrt)
        view.backgroundColor = .darkGray
        sqrt.translatesAutoresizingMaskIntoConstraints = false
        let horizontalConstraint = NSLayoutConstraint(item: sqrt, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: sqrt, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: sqrt, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        let heightConstraint = NSLayoutConstraint(item: sqrt, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
            view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
        
        
        
        
        let anim = CABasicAnimation(keyPath: "transform.scale")
        anim.fromValue = 1
        anim.toValue = 2
        anim.duration = 2.0
        sqrt.layer.add(anim, forKey: "transform.scale")
        
    
    }


}


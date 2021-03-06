//
//  PageCell.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/29/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell{
    
    let welcomeImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "welcome-logo-2"))
        // this enables autolayout for our imageview
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        
        let attributedText = NSMutableAttributedString(string: "Welcome to solaris uv", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 18), NSAttributedString.Key.foregroundColor: UIColor.colorPaletteDeepBlue])
        
        attributedText.append(NSMutableAttributedString(string: "\n\nBalance your sun protection \n\nand vitamin D production.", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13), NSAttributedString.Key.foregroundColor: UIColor.colorPaletteGrey]))
        
        textView.attributedText = attributedText
        
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        

        setupLayout()
        
    }
    
    
    private func setupLayout() {
        
        let middleImageContainerView = UIView()
//        middleImageContainerView.backgroundColor = .blue
        addSubview(middleImageContainerView)
        //        middleImageContainerView.frame = CGRect(x: 0, y: 250, width: 100, height: 100)
        //enable auto layout
        middleImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        middleImageContainerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        
        middleImageContainerView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        
        middleImageContainerView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        
        middleImageContainerView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
        middleImageContainerView.addSubview(welcomeImageView)
        welcomeImageView.leftAnchor.constraint(equalTo: middleImageContainerView.leftAnchor, constant: 30).isActive = true
        welcomeImageView.topAnchor.constraint(equalTo: middleImageContainerView.topAnchor, constant: 275).isActive = true
        welcomeImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        welcomeImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        middleImageContainerView.addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: middleImageContainerView.topAnchor, constant: 425).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: middleImageContainerView.leftAnchor, constant: 30).isActive = true
        
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//
//@objc func buttonClicked(sender: UIButton){
//    print("Button clicked")
//}
//
//let button = UIButton.init(type: .system)
//button.setTitle("SKIP", for: .normal)
//button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
//self.addSubview(button)


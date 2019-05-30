//
//  PageVC.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/29/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit

class PageVC: UIViewController {
    
    // Keep viewDidLoad clean
    // {} is reffered to as closure or anon, functions
    
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
    
    // apply correct encapsulation principles in your classes
    private let previousButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        button.setTitleColor(deepBlueColorNext, for: .normal)
        return button
    }()
    
    private let nextButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        button.setTitleColor(deepBlueColorNext, for: .normal)
        return button
    }()
    
    private let pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        let violetColorNext = UIColor.colorPaletteViolet
        pc.currentPageIndicatorTintColor = violetColorNext
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        pc.pageIndicatorTintColor = deepBlueColorNext
        return pc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // here's our entry point into our app
//        view.addSubview(welcomeImageView)
        view.addSubview(descriptionTextView)
        
        setupBottomControls()
        
        setupLayout()
        
    }
    fileprivate func setupBottomControls() {
//        view.addSubview(previousButton)
//        previousButton.backgroundColor = .colorPaletteDeepBlue
//        previousButton.frame = CGRect(x: 0, y: 0, width: 200, height: 50)
        
//        let coralView = UIView()
//        coralView.backgroundColor = .colorPalettecoral
        
//        let deepBlueView = UIView()
//        deepBlueView.backgroundColor = .colorPaletteDeepBlue
        
//        let greyView = UIView()
//        greyView.backgroundColor = .colorPaletteGrey
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomControlsStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlsStackView)
        
        NSLayoutConstraint.activate([
//            previousButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    private func setupLayout() {
        
        let middleImageContainerView = UIView()
//        middleImageContainerView.backgroundColor = .blue
        view.addSubview(middleImageContainerView)
//        middleImageContainerView.frame = CGRect(x: 0, y: 250, width: 100, height: 100)
        //enable auto layout
        middleImageContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        middleImageContainerView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        
        middleImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        
        middleImageContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        
        middleImageContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        middleImageContainerView.addSubview(welcomeImageView)
        welcomeImageView.leftAnchor.constraint(equalTo: middleImageContainerView.leftAnchor, constant: 30).isActive = true
        welcomeImageView.topAnchor.constraint(equalTo: middleImageContainerView.topAnchor, constant: 275).isActive = true
        welcomeImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        welcomeImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        middleImageContainerView.addSubview(descriptionTextView)
        descriptionTextView.topAnchor.constraint(equalTo: middleImageContainerView.topAnchor, constant: 425).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: middleImageContainerView.leftAnchor, constant: 30).isActive = true
    }
    

}
// descriptionTextView.rightAnchor.constraint(equalTo: middleImageContainerView.rightAnchor, constant: 80).isActive = true

// descriptionTextView.bottomAnchor.constraint(equalTo: middleImageContainerView.bottomAnchor, constant: 0).isActive = true
//        middleImageContainerView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//
//        middleImageContainerView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true


//        welcomeImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//
//        welcomeImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
//        welcomeImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 275).isActive = true
//        welcomeImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        welcomeImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
//
//        textView.text = "Welcome to solaris uv"
//        textView.font = UIFont.boldSystemFont(ofSize: 18)
//        textView.textColor = UIColor.colorPaletteDeepBlue
// textView.font = UIFont(name: Fonts.lato, size: 50)

//        view.addSubview(secondDescriptionTextView)
//        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

//        secondDescriptionTextView.topAnchor.constraint(equalTo: welcomeImageView.bottomAnchor, constant: 60).isActive = true
//        secondDescriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
//        secondDescriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        secondDescriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
//

//    let secondDescriptionTextView: UITextView = {
//        let secondTextView = UITextView()
//        secondTextView.text = "Balance your sun protection \nand vitamin D production."
//        secondTextView.font = UIFont.boldSystemFont(ofSize: 14)
//        secondTextView.textColor = UIColor.colorPaletteGrey
//        secondTextView.translatesAutoresizingMaskIntoConstraints = false
//        secondTextView.isEditable = false
//        secondTextView.isScrollEnabled = false
//        return secondTextView
//    }()

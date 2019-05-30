//
//  SwipingController.swift
//  SolarisUV
//
//  Created by Sahiti  on 5/29/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit

class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let previousButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("PREV", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        button.setTitleColor(deepBlueColorNext, for: .normal)
        button.addTarget(self, action: #selector(handlePrev),
                         for: .touchUpInside)
        return button
    }()
    
    @objc private func handlePrev() {
        print("Trying to advance to next")
        
        let nextIndex = max(pageControl.currentPage - 1, 0)
        pageControl.currentPage = nextIndex
        let indexPath = IndexPath(item: nextIndex, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    private let nextButton: UIButton = {
        
        let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        button.setTitleColor(deepBlueColorNext, for: .normal)
        button.addTarget(self, action: #selector(handleNext),
                         for: .touchUpInside)
        return button
    }()
    
    
    @objc private func handleNext() {
        print("Trying to advance to next")
        
        let nextIndex = min(pageControl.currentPage + 1, pages.count - 1)
        pageControl.currentPage = nextIndex
        let indexPath = IndexPath(item: nextIndex, section: 0)
        collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    let pages = ["PageCell", "PageCell2", "PageCell3", "PageCell4"]

    private lazy var pageControl: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = pages.count
        let violetColorNext = UIColor.colorPaletteViolet
        pc.currentPageIndicatorTintColor = violetColorNext
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        pc.pageIndicatorTintColor = deepBlueColorNext
        return pc
    }()
    
    fileprivate func setupBottomControls() {
        
        let bottomControlsStackView = UIStackView(arrangedSubviews: [previousButton, pageControl, nextButton])
        
        bottomControlsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        bottomControlsStackView.distribution = .fillEqually
        
        view.addSubview(bottomControlsStackView)
        
        NSLayoutConstraint.activate([
            bottomControlsStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomControlsStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomControlsStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomControlsStackView.heightAnchor.constraint(equalToConstant: 50)
            ])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBottomControls()
//
//        collectionView?.backgroundColor = .white
//        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellid")
//        collectionView?.isPagingEnabled = true
                collectionView?.backgroundColor = .white
                collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellid")
                collectionView?.register(PageCell2.self, forCellWithReuseIdentifier: "cellid2")
        
                collectionView?.isPagingEnabled = true
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 4
    }
        override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
            if indexPath.item == 0
            {
                // Cell 1
                let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
                return cell1
            }
            else
            {
                // Cell 2
                let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid2", for: indexPath)
                return cell2
            }
            //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
            ////        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
            //        return cell
        }

//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
////        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
//        return cell
//    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
}

//import UIKit
//
//class SwipingController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
//
//    //    let imageNames = ["welcome-logo-2", "bluetooth-logo-5", "front-page-logo-2" ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        collectionView?.backgroundColor = .white
//        collectionView?.register(PageCell.self, forCellWithReuseIdentifier: "cellid")
//        collectionView?.register(PageCell2.self, forCellWithReuseIdentifier: "cellid2")
//
//        collectionView?.isPagingEnabled = true
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 0
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//
//        return 2
//    }
//
//    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        if indexPath.item == 0
//        {
//            // Cell 1
//            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
//            return cell1
//        }
//        else
//        {
//            // Cell 2
//            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid2", for: indexPath)
//            return cell2
//        }
//        //        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath)
//        ////        cell.backgroundColor = indexPath.item % 2 == 0 ? .red : .green
//        //        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: view.frame.width, height: view.frame.height)
//    }
//
//}

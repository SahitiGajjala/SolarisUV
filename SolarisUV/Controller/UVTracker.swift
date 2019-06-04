//
//  UVTracker.swift
//  SolarisUV
//
//  Created by Sahiti  on 6/4/19.
//  Copyright © 2019 Sahiti Gajjala. All rights reserved.
//

import UIKit
import Firebase

class UVTracker: UIViewController, URLSessionDownloadDelegate {
    
    let shapeLayer = CAShapeLayer()
    
    let percentageLabel: UILabel = {
        let label = UILabel()
        label.text = "Press"
        label.textAlignment = .center
        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
        label.textColor = deepBlueColorNext
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    //    let goalLabel: UILabel = {
    //        let label = UILabel()
    //        label.text = "Daily IU Goal\n 600IU"
    //        label.textAlignment = .center
    //        let deepBlueColorNext = UIColor.colorPaletteDeepBlue
    //        label.textColor = deepBlueColorNext
    //        label.font = UIFont.boldSystemFont(ofSize: 18)
    //        return label
    //    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        view .addSubview(percentageLabel)
        percentageLabel.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        percentageLabel.center = view.center
        
        //        view.addSubview(goalLabel)
        //        goalLabel.frame = CGRect(x: 20, y: 20, width: 100, height: 100)
        //        goalLabel.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        //        goalLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 30).isActive = true
        
        
        //Circle drawing
        
        //        let center = view.center
        
        //        // create my track layer
        //        let trackLayer = CAShapeLayer()
        //        let circularPath = UIBezierPath(arcCenter: .zero, radius: 100, startAngle: 0, endAngle: 2 * CGFloat.pi, clockwise: true)
        //        trackLayer.path = circularPath.cgPath
        //
        //        trackLayer.path = circularPath.cgPath
        //
        //        trackLayer.strokeColor = UIColor.lightGray.cgColor
        //        trackLayer.lineWidth = 10
        //        trackLayer.fillColor = UIColor.clear.cgColor
        //        trackLayer.lineCap = CAShapeLayerLineCap.round
        //        trackLayer.position = view.center
        //
        //        view.layer.addSublayer(trackLayer)
        
        
        //        shapeLayer.path = circularPath.cgPath
        //
        //        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = 10
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.position = view.center
        
        shapeLayer.transform = CATransform3DMakeRotation(-CGFloat.pi / 2, 0, 0, 1)
        
        shapeLayer.strokeEnd = 0
        
        view.layer.addSublayer(shapeLayer)
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self
            , action: #selector(handleTap)))
        
    }
    //    let urlString = "https://firebasestorage.googleapis.com/v0/b/firestorechat-e64ac.appspot.com/o/intermediate_training_rec.mp4?alt=media&token=e20261d0-7219-49d2-b32d-367e1606500c"
    
    //    private func beginDownloadingFile() {
    //        print("Attempting to download file")
    //
    //        shapeLayer.strokeEnd = 0
    //
    //        let configuration = URLSessionConfiguration.default
    //        let operationQueue = OperationQueue()
    //        let urlSession = URLSession(configuration: configuration, delegate: self, delegateQueue: operationQueue)
    //
    //        guard let url = URL(string: urlString) else { return }
    //
    //        let downloadTask = urlSession.downloadTask(with: url)
    //        downloadTask.resume()
    //    }
    
    private func beginVitaminDProgress() {
        print("Attempting to monitor vitamin D progress")
        
        shapeLayer.strokeEnd = 0
        
        vitSession()
        
    }
    
    func vitSession() {
        let percentage = CGFloat(vitDAge)
        
        DispatchQueue.main.async{
            
            self.percentageLabel.text = "\(Int(percentage))% "
            self.shapeLayer.strokeEnd = percentage
        }
    }
    
    //    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didWriteData bytesWritten: Int64, totalBytesWritten: Int64, totalBytesExpectedToWrite: Int64) {
    //
    //        let percentage = CGFloat(vitDAge)
    //
    //        DispatchQueue.main.async{
    //
    //        self.percentageLabel.text = "\(Int(percentage))% "
    //        self.shapeLayer.strokeEnd = percentage
    //        }
    //    }
    
    func urlSession(_ session: URLSession, downloadTask: URLSessionDownloadTask, didFinishDownloadingTo location: URL) {
        print ("Finished downloading file")
    }
    
    fileprivate func animateCircle() {
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        
        basicAnimation.duration = 2
        
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
    }
    
    @objc private func handleTap() {
        print("Attempting to animate stroke")
        
        beginVitaminDProgress()
        
        //        beginDownloadingFile()
        
        // animateCircle()
    }
    
    let welcomeImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "uv-tracker-2"))
        // this enables autolayout for our imageview
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
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
        welcomeImageView.leftAnchor.constraint(equalTo: middleImageContainerView.leftAnchor, constant: 87.5).isActive = true
        welcomeImageView.topAnchor.constraint(equalTo: middleImageContainerView.topAnchor, constant: 310).isActive = true
        welcomeImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        welcomeImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        
        //        middleImageContainerView.addSubview(descriptionTextView)
        //        descriptionTextView.topAnchor.constraint(equalTo: middleImageContainerView.topAnchor, constant: 425).isActive = true
        //        descriptionTextView.leftAnchor.constraint(equalTo: middleImageContainerView.leftAnchor, constant: 30).isActive = true
    }
    
    
}



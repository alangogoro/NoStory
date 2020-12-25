//
//  MainViewController.swift
//  NoStory
//
//  Created by usr on 2020/12/25.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .blue
        addButton()
    }
    
    @objc func buttonTapped() {
        let controller = DetailViewController()
        navigationController?.pushViewController(controller, animated: true)
    }
    
    private func addButton() {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(MainViewController.buttonTapped), for: .touchUpInside)
        button.setTitle("Go to Detail", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemPurple
        view.addSubview(button)
        
        // button autolayout array
        let horizontalCenter = NSLayoutConstraint(item: button, attribute: .centerX,
                                                  relatedBy: .equal, toItem: view,
                                                  attribute: .centerX, multiplier: 1.0, constant: 0)
        let verticalCenter = NSLayoutConstraint(item: button, attribute: .centerY,
                                                  relatedBy: .equal, toItem: view,
                                                  attribute: .centerY, multiplier: 1.0, constant: 0)
        let width = NSLayoutConstraint(item: button, attribute: .width,
                                       relatedBy: .equal, toItem: nil,
                                       attribute: .width, multiplier: 1.0, constant: 100)
        let height = NSLayoutConstraint(item: button, attribute: .height,
                                        relatedBy: .equal, toItem: nil,
                                        attribute: .height, multiplier: 1.0, constant: 75)
        let constraints: [NSLayoutConstraint] = [horizontalCenter, verticalCenter, width, height]
        NSLayoutConstraint.activate(constraints)
    }
}

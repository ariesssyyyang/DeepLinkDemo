//
//  ViewController.swift
//  DeepLinkDemo
//
//  Created by Aries Yang on 2020/6/15.
//  Copyright © 2020 Aries Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open link", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalToConstant: 150),
            button.heightAnchor.constraint(equalToConstant: 80),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        button.addTarget(self, action: #selector(openLink(_:)), for: .touchUpInside)
    }

    @objc func openLink(_ sender: UIButton) {
        guard let url = URL(string: "https://aysoft-deep-link.herokuapp.com/") else { return }
        print("👻 url: ", url.absoluteString)
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}


//
//  FeedViewController.swift
//  Navigation
//
//  Created by Максим Камышев on 12.05.2025.
//

import UIKit

class FeedViewController: UIViewController {

    private lazy var actionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Перейти", for: .normal)
        button.setTitleColor(.black, for: .normal)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(actionButton)

        NSLayoutConstraint.activate([
            actionButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            actionButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            actionButton.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            actionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        actionButton.addTarget(self, action: #selector(buttonPressed(_ :)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        let post = Post(title: "Первый пост")
        let postVC = PostViewController(post: post)
        
        navigationController?.pushViewController(postVC, animated: true)
    }
}



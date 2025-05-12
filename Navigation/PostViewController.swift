//
//  PostViewController.swift
//  Navigation
//
//  Created by Максим Камышев on 12.05.2025.
//

import UIKit

class PostViewController: UIViewController {
    
    let post: Post
    
    init(post: Post) {
        self.post = post
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = post.title
        view.backgroundColor = .lightGray
        
        
    }
    

}

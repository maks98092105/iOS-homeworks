//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Максим Камышев on 13.05.2025.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var catImageView: UIImageView = {
        let catImage = UIImageView()
        catImage.image = UIImage(named: "cat")
        catImage.translatesAutoresizingMaskIntoConstraints = false
        
        catImage.layer.cornerRadius = 50
        catImage.layer.borderWidth = 3
        catImage.layer.borderColor = UIColor.white.cgColor
        catImage.clipsToBounds = true
       
        return catImage
    }()
    
    private lazy var nameLabel: UILabel = {
        let name = UILabel()
        name.text = "Hipster Cat"
        name.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        name.textColor = .black
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    private lazy var statusLabel: UILabel = {
        let status = UILabel()
        status.text = "Waiting for something..."
        status.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        status.textColor = .darkGray
        status.translatesAutoresizingMaskIntoConstraints = false
        
        return status
    }()
    
    private lazy var actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show status", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.layer.cornerRadius = 4
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowRadius = 4
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.7
        
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(catImageView)
        addSubview(nameLabel)
        addSubview(statusLabel)
        addSubview(actionButton)
        
        NSLayoutConstraint.activate([
            catImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            catImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            catImageView.widthAnchor.constraint(equalToConstant: 100),
            catImageView.heightAnchor.constraint(equalToConstant: 100),
            
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            nameLabel.leadingAnchor.constraint(equalTo: catImageView.trailingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            statusLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -34),
            statusLabel.leadingAnchor.constraint(equalTo: catImageView.trailingAnchor, constant: 20),
            statusLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            actionButton.topAnchor.constraint(equalTo: catImageView.bottomAnchor, constant: 16),
            actionButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            actionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            actionButton.heightAnchor.constraint(equalToConstant: 50),
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

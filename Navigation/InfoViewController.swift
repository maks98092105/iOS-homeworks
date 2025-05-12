//
//  InfoViewController.swift
//  Navigation
//
//  Created by Максим Камышев on 12.05.2025.
//

import UIKit

class InfoViewController: UIViewController {

     private lazy var button: UIButton = {
         let button = UIButton()
         button.frame = CGRect(x: 100, y: 100, width: 200, height: 75)
         button.setTitle("Показать ошибку", for: .normal)
         button.setTitleColor(.red, for: .normal)
         button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
         
         return button
     }()
    
     override func viewDidLoad() {
         super.viewDidLoad()
         
         view.backgroundColor = .white
         view.addSubview(button)
     }
     
     @objc func showAlert(){
         let alert = UIAlertController(title: "Внимание", message: "Вы уверены?", preferredStyle: .alert)
         
         let okAction = UIAlertAction(title: "Да", style: .default) {_ in print("Нажали 'Да'")}
         let cancelAction = UIAlertAction(title: "Нет", style: .cancel) {_ in print("Нажали 'Нет'")}
         
         alert.addAction(cancelAction)
         alert.addAction(okAction)

         present(alert, animated: true)
     }
}

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileHeader = ProfileHeaderView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        view.addSubview(profileHeader)
        setupProfileHeaderConstraints()
    }
    
    private func setupProfileHeaderConstraints() {
        
        profileHeader.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeader.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
}

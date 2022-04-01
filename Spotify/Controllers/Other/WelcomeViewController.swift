//
//  WelcomeViewController.swift
//  Spotify
//
//  Created by Islam Noureldin on 31/03/2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    private let signInButton: UIButton = {
        let signInButton = UIButton()
        signInButton.backgroundColor = .white
        signInButton.setTitle("Sign In with Spotify", for: .normal)
        signInButton.setTitleColor(.systemBlue, for: .normal)
        return signInButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        title = "Spotify"
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(x: 20,
                                    y: view.height-50-view.safeAreaInsets.bottom,
                                    width: view.width-40,
                                    height: 50)
    }
    @objc func didTapSignIn(){
        let authVc = AuthViewController()
        authVc.navigationItem.largeTitleDisplayMode = .never
        authVc.completionHandler = { [weak self] success in
            DispatchQueue.main.async {
                self?.handleSignIn(success: success)
            }
        }
        navigationController?.pushViewController(authVc, animated: false)
    }
    private func handleSignIn(success: Bool){
        
    }
}

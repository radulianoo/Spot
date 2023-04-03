//
//  WelcomeVC.swift
//  Spotifyapp
//
//  Created by Octav Radulian on 03.04.2023.
//

import UIKit

class WelcomeVC: UIViewController {
    
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Sign in with Spotify", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Spotify"
        view.backgroundColor = .systemGreen
        view.addSubview(signInButton)
        signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
    }
    
    
    //in order to layout the button we override the subviews
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        signInButton.frame = CGRect(x: 20,
                                    y: view.height - 50 - view.safeAreaInsets.bottom,
                                    width: view.width - 40,
                                    height: 50)
    }
    
    
    @objc func didTapSignIn() {
        let vc = AuthVC()
        vc.completionHandler = { [weak self] sucess in
            DispatchQueue.main.async {
                self?.handleSignIn(sucess: sucess)
            }
        }
        navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    private func handleSignIn(sucess: Bool) {
        //log user in or present error 
    }
}

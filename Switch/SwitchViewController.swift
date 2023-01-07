//
//  ViewController.swift
//  Switch
//
//  Created by Карина on 10.12.2022.
//

import UIKit

class SwitchViewController: UIViewController {

    // MARK: - private property
    
    private var colorSwitch = UISwitch()
    private var colorView = UIView()
    private var onOfLabel = UILabel()
    
    
    
    //MARK: - Override UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        addActions()
        
    }
    
    @objc private func changedColor() {
        if colorSwitch.isOn != true {
            colorView.backgroundColor = .red
            onOfLabel.text = "Off"
        } else {
            colorView.backgroundColor = .green
            onOfLabel.text = "On"
        }
    }

}

// MARK: - Setting View

extension SwitchViewController {
    
    func setupView() {
        view.backgroundColor = .darkGray
        addSubview()
        setupViewMini()
        setupLabel()
        setupSwitch()
        setupLayout()
        
    }
    
    private func addActions() {
        colorSwitch.addTarget(
            self,
            action: #selector(changedColor),
            for: .touchUpInside
        )
    }
    
}

// MARK: - Setting

extension SwitchViewController {
    func addSubview() {
        view.addSubview(colorView)
        view.addSubview(colorSwitch)
        view.addSubview(onOfLabel)
    }
    
    func setupSwitch() {
        colorSwitch.onTintColor = .blue
        colorSwitch.thumbTintColor = .white
        colorSwitch.preferredStyle = .automatic
        colorSwitch.isOn = false
        
    }
    
    func setupLabel() {
        onOfLabel.text = "On"
        onOfLabel.textColor = .white
        onOfLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }
    
    func setupViewMini() {
        colorView.backgroundColor = .red
        
    }
    
}

// MARK: - Layout

extension SwitchViewController {
    
    func setupLayout() {
        
        [colorSwitch, colorView, onOfLabel].forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
   
    
    NSLayoutConstraint.activate([
        
        colorView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
        colorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        colorView.widthAnchor.constraint(equalToConstant: 300),
        colorView.heightAnchor.constraint(equalToConstant: 200),
        
        onOfLabel.topAnchor.constraint(equalTo: colorView.bottomAnchor, constant: 100),
        onOfLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        
        colorSwitch.topAnchor.constraint(equalTo: onOfLabel.bottomAnchor, constant: 50),
        colorSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        
        
        
        
        
        
    ])
    
}

    }

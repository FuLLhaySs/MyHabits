//
//  HabitsViewController.swift
//  MyHabits
//
//  Created by Игорь Павлов on 04.07.2022.
//

import UIKit

class HabitsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraintsAndSubviwesHabits()
    }
    
    //   кнопка "Добавить"
    let addTarget: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "Symbolcross"), for: .normal)
        return button
    }()
    
    
    private func setupConstraintsAndSubviwesHabits() {
        view.addSubview(addTarget)
        
    NSLayoutConstraint.activate([
        
        addTarget.topAnchor.constraint(equalTo: view.topAnchor, constant: 44),
        addTarget.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 350),
        addTarget.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 5),
//        addTarget.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        addTarget.heightAnchor.constraint(equalToConstant: 50),
        addTarget.widthAnchor.constraint(equalToConstant: 50),
        
    ])
    }
}

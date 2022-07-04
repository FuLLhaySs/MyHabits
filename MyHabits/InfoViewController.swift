//
//  InfoViewController.swift
//  MyHabits
//
//  Created by Игорь Павлов on 04.07.2022.
//

import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraintsAndSubviwesInfo()
    }
    
    // Скрол экрана
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.backgroundColor = .red
        scrollView.isScrollEnabled = true
        return scrollView
    }()
    
    // текст содержание
    private lazy var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " 1Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму"
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.textColor = .systemGray
        label.backgroundColor = .white
        label.numberOfLines = 0
        label.text = " Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // Верстка
    private func setupConstraintsAndSubviwesInfo() {
        view.addSubview(scrollView)
        view.addSubview(descriptionLabel)
        view.addSubview(labelText)

        
        NSLayoutConstraint.activate([
            
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leftAnchor.constraint(equalTo: view.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: view.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 16),
            descriptionLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 350),
            
            labelText.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor),
            labelText.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            labelText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            labelText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
            ])
    

}
}

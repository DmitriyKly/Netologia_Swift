//
//  CustomTableViewCell.swift
//  Lesson07
//
//  Created by dmitriy on 19/6/2023.
//

import UIKit

final class CustomTableViewCell: UITableViewCell {
    

    
    private let contentWhiteView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let carImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        imageView.contentMode = .scaleToFill
        return imageView
    }()
    
    private let carText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray4
        return label
    }()
    
    private let descriptionText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .systemGray4
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layout()
        customizeCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        carImageView.image = nil
        carText.text = nil
        descriptionText.text = nil
    }
    
    func setupCell(model: CarModel) {
        carImageView.image = model.image
        carText.text = model.name
        descriptionText.text = model.description
    }
    
    private func customizeCell() {
        contentView.backgroundColor = .blue
        contentWhiteView.layer.cornerRadius = 10
        contentWhiteView.layer.borderColor = UIColor.black.cgColor
        contentWhiteView.layer.borderWidth = 2
    }
    
    private func layout() {
        [contentWhiteView, carImageView, carText, descriptionText].forEach {contentView.addSubview($0)}
        
        let viewInset: CGFloat = 8
        let imageInsert: CGFloat = 10
        let heightView: CGFloat = 100
        let textInset: CGFloat = 16
        
        NSLayoutConstraint.activate([
            contentWhiteView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: viewInset),
            contentWhiteView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: viewInset),
            contentWhiteView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -viewInset),
            contentWhiteView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -viewInset),
            
            contentWhiteView.topAnchor.constraint(equalTo: contentWhiteView.topAnchor, constant: imageInsert),
            contentWhiteView.leadingAnchor.constraint(equalTo: contentWhiteView.leadingAnchor, constant: imageInsert),
            contentWhiteView.bottomAnchor.constraint(equalTo: contentWhiteView.bottomAnchor, constant: -imageInsert),
            carImageView.widthAnchor.constraint(equalToConstant: heightView - imageInsert * 2),
            
            carText.topAnchor.constraint(equalTo: carImageView.topAnchor),
            carText.leadingAnchor.constraint(equalTo: carImageView.trailingAnchor, constant: textInset),
            carText.trailingAnchor.constraint(equalTo: contentWhiteView.trailingAnchor, constant: -textInset),
            
            descriptionText.topAnchor.constraint(equalTo: carText.bottomAnchor, constant: textInset),
            descriptionText.leadingAnchor.constraint(equalTo: carText.leadingAnchor),
            descriptionText.trailingAnchor.constraint(equalTo: carText.trailingAnchor),
            descriptionText.bottomAnchor.constraint(equalTo: contentWhiteView.bottomAnchor, constant: -imageInsert)
        ])
    }
}

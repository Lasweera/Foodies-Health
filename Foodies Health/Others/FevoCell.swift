////
////  FevoCell.swift
////  Foodies Health
////
////  Created by LPW on 05/02/2023.
////
//
//import UIKit
//
//class FevoCell: UITableViewCell {
//    
//    var foodImageView = UIImageView()
//    var foodtitleLabel = UILabel()
//    
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        addSubview(foodImageView)
//        addSubview(foodtitleLabel)
//        
//        configureImageView()
//        configureTitleLabel()
//        setImageConstraints()
//        setTitleLabelConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func set(food: Favo) {
//        foodImageView.image = food.image
//        foodtitleLabel.text = food.title
//    }
//    
//    func configureImageView() {
//        foodImageView.layer.cornerRadius = 10
//        foodImageView.clipsToBounds = true
//    }
//    
//    func configureTitleLabel() {
//        foodtitleLabel.numberOfLines = 0
//        foodtitleLabel.adjustsFontSizeToFitWidth = true
//    }
//    
//    func setImageConstraints() {
//        foodImageView.translatesAutoresizingMaskIntoConstraints = false
//        foodImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        foodImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
//        foodImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        foodImageView.widthAnchor.constraint(equalTo: foodImageView.heightAnchor, multiplier: 16/9).isActive = true
//    }
//    
//    func setTitleLabelConstraints() {
//        foodtitleLabel.translatesAutoresizingMaskIntoConstraints = false
//        foodtitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        foodtitleLabel.leadingAnchor.constraint(equalTo: foodImageView.trailingAnchor, constant: 20).isActive = true
//        foodtitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
//        foodtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -12).isActive = true
//    }
//    
//}

//
//  Cell.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 18.05.2022.
//

import UIKit

class Cell: UICollectionViewCell {
    
    static let identifier = "CollectionViewCell"
    
    // MARK: - Views
    
    private lazy var imageView: UIImageView = {
        var imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = Constants.searchUIKitImageCornerRadius
        return imageView
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        contentView.addSubview(imageView)
    }
    
    private func setupLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: Constants.searchUIKitImageHeightAnchor).isActive = true
        imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: Constants.searchUIKitImageWidthAnchor).isActive = true
    }
    
    public func configure(model: Album) {
        imageView.image = UIImage(named: model.imegeName)
    }
}

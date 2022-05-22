//
//  CellHeader.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 18.05.2022.
//

import UIKit

class CellsHeader: UICollectionReusableView {
    
    static let identifier = "CollectionViewHeader"
    
    // MARK: - Views
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: Constants.searchUIKitLabelSize, weight: .bold)
        return label
    }()
    
    // MARK: - Init
    
    override func prepareForReuse() {
        label.text = nil
    }
    
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
        addSubview(label)
    }
    
    private func setupLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor).isActive = true
    }
}

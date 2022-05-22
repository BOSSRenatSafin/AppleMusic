//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by Ренат Сафин on 18.05.2022.
//

import UIKit

class SearchViewController: UIViewController {
    
    var data = [SettingsSection]()
    
    // MARK: - Views
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: createLayout())
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        collectionView.register(CellsHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CellsHeader.identifier)
        collectionView.dataSource = self
        return collectionView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBur()
        setupHierarchy()
        setupLayout()
        updateData(addTo: UIKitSearchData.createSection())
    }
    
    // MARK: - Settings
    
    private func setupHierarchy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: Constants.searchUIKitCollectionViewTopAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: Constants.searchUIKitCollectionViewLeadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: Constants.searchUIKitCollectionViewTraelingAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    private func setupNavigationBur() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
    }
    
    private func createLayout() -> UICollectionViewLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(Constants.searchUIKitItemSize), heightDimension: .fractionalHeight(Constants.searchUIKitItemSize))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(Constants.searchUIKitGroupSizeWidth), heightDimension: .fractionalHeight(Constants.searchUIKitGroupSizeHeight))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: Constants.searchUIKitGroupCount)
        let section = NSCollectionLayoutSection(group: group)
        let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(Constants.searchUIKitHeaderSizeWidth),
                                                heightDimension: .estimated(Constants.searchUIKitHeaderSizeHeight)
        )
        let header = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize,
                                                                 elementKind: UICollectionView.elementKindSectionHeader,
                                                                 alignment: .top
        )
        section.boundarySupplementaryItems = [header]
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    private func updateData(addTo: [SettingsSection]) -> [SettingsSection] {
        data.append(contentsOf: addTo)
        return data
    }
}

// MARK: - SwiftUI

import SwiftUI

struct ContainerView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        return SearchViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

struct SearchViewController_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
}

//
//  MainUIKitController.swift
//  AppleMusic
//
//  Created by Виктор on 11.10.2022.
//

import UIKit
import SwiftUI

class MainUIKitController: UIViewController, UICollectionViewDelegate {

    // MARK: - Properties

    private var models = ModelData().searchCategories

    private var searchView:  MainUIKitView? {
        guard isViewLoaded else { return nil }
        return view as? MainUIKitView
    }

    // MARK: - Lifecycle

    override func loadView() {
        view = MainUIKitView()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavigationController()
        setDelegates()
    }

    // MARK: - Settings

    private func setupNavigationController() {
        title = "Поиск"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false

        navigationItem.searchController = searchView?.searchController
        navigationItem.hidesSearchBarWhenScrolling = false
    }

    private func setDelegates() {
        searchView?.collectionView.delegate = self
        searchView?.collectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDataSource

extension MainUIKitController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        models.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier,
                                                            for: indexPath) as? CollectionViewCell
        else {
            return UICollectionViewCell() }

        let model = models[indexPath.row]
        cell.nameLabel.text = model.title
        cell.imageView.image = UIImage(named: "\(model.imageName)")
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                               withReuseIdentifier: HeaderView.identifier,
                                                                               for: indexPath) as? HeaderView
        else {
            return UICollectionReusableView()
        }

        return headerView
    }
}

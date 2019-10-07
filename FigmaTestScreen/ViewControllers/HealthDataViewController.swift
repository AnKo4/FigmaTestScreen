//
//  HealthDataViewController.swift
//  FigmaTestScreen
//
//  Created by Andrey on 04/10/2019.
//  Copyright © 2019 Andrey. All rights reserved.
//

import UIKit

class HealthDataViewController: UIViewController {

    @IBOutlet private weak var collectionView: UICollectionView!
    
    let viewModel = HealthDataViewModel()
    
    let edgeInsets = UIEdgeInsets(top: CGFloat(8), left: CGFloat(8), bottom: CGFloat(8), right: CGFloat(8))
    let interitemSpacing = CGFloat(8)
    let lineSpacing = CGFloat(8)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        print(UIScreen.main.bounds.width / 2 - edgeInsets.left)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "SectionZeroCollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "sectionZeroCell")
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "sectionOneCell")
     }

  
}

extension HealthDataViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0: return 4
        case 1: return 20
        default: return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionZeroCell", for: indexPath) as? SectionZeroCollectionViewCell else { return UICollectionViewCell() }
            cell.setupCellContent(data: viewModel.sectionZeroData[indexPath.row])
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sectionOneCell", for: indexPath)
            return cell
        default: return UICollectionViewCell()
        }
    }
    
    
}

extension HealthDataViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let imageSize = HealthDataSectionZeroCellImageSize()
        let aspectRatio = imageSize.height / imageSize.width
        switch indexPath.section {
        case 0: return CGSize(width: (UIScreen.main.bounds.width - edgeInsets.left - edgeInsets.right - interitemSpacing) / 2 , height: ((UIScreen.main.bounds.width - edgeInsets.left - edgeInsets.right - interitemSpacing) / 2) * aspectRatio)
        case 1: return CGSize(width: UIScreen.main.bounds.width, height: CGFloat(52))
        default: return CGSize()
        }
    }
    
}


extension HealthDataViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        switch section {
        case 0: return edgeInsets
        default: return UIEdgeInsets.zero
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return interitemSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return lineSpacing
    }
}

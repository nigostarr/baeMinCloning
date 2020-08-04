//
//  HomeViewController.swift
//  baeMinCloning
//
//  Created by Ji Chang Hyun on 2020/08/04.
//  Copyright © 2020 Nigostarr. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    // TODO: 트랙관리 객체 추가
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    // 몇개 표시 할까?
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // TODO: 트랙매니저에서 트랙갯수 가져오기
        return 10
    }
    
    // 셀 어떻게 표시 할까?
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // TODO: 셀 구성하기
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCollectionViewCell", for: indexPath) as? MenuCollectionViewCell else {
            return UICollectionViewCell()
        }
            return cell
    }
    
    // 헤더뷰 어떻게 표시할까?
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            // TODO: 헤더 구성
            return UICollectionReusableView()
        default:
            return UICollectionReusableView()
        }
    }
}

extension HomeViewController: UICollectionViewDelegate {
    // 클릭했을때 어떻게 할지?
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // TODO: 메뉴 썸네일 클릭시 메뉴뷰 띄우기
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    // 셀 사이즈
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 20 - card(width) - 20 - card(width) - 20
        // TODO: 셀사이즈 구하기
        
//        let itemSpacing: CGFloat = 10
//        let margin: CGFloat = 10
//        let width = (collectionView.bounds.width - itemSpacing - margin * 6)
//        let height = width + 60
//        return CGSize(width: 110, height: 150)
        return CGSize(width: 110, height: 150)
    }
}

//
//  InstaStoryTableViewCell.swift
//  Instagram clone
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit

class InstaStoryTableViewCell: UITableViewCell {
    

    @IBOutlet weak var storyCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.storyCollectionView.dataSource = self
        self.storyCollectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension InstaStoryTableViewCell: UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "profileStoryCollectionViewCell", for: indexPath) as? profileStoryCollectionViewCell else { return UICollectionViewCell()}
        if indexPath.row == 0 {
            cell.storyBorder.layer.borderWidth = 0
        }
        if indexPath.row > 0 {
            cell.storyBorder.layer.borderWidth = 3
            cell.storyBorder.layer.borderColor = UIColor.purple.cgColor
            cell.storyBorder.layer.cornerRadius = cell.storyBorder.frame.height/2
            cell.storyBorder.clipsToBounds = true
            cell.addStory.isHidden = true
        }
        
        return cell

        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80.0, height: 120.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    
    
}

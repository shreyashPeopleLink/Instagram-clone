//
//  InstaPostTableViewCell.swift
//  Instagram clone
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit

class InstaPostTableViewCell: UITableViewCell {

    @IBOutlet weak var postHeart: UIImageView!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var likeBtn: UIButton!
    
    @IBOutlet weak var likesCount: UILabel!
    
    var liked:Bool = true
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        postHeart.isHidden = true
        postImage.isUserInteractionEnabled = true
        let tapped = UITapGestureRecognizer(target: self, action: #selector(doubleClick))
        tapped.numberOfTapsRequired = 2
        postImage.addGestureRecognizer(tapped)
    }
    
    @objc func doubleClick(){
        
        liked = true
        likeBtn.setImage(UIImage(named: "Liked.png"), for: .normal)
        postHeart.isHidden = false
                UIView.animate(withDuration: 1, delay: 0.5, options: UIView.AnimationOptions.transitionFlipFromTop, animations: {
                    self.postHeart.alpha = 0
                }, completion: { finished in
                    self.postHeart.isHidden = true
                    self.postHeart.alpha = 1
                })
    }
    
    @IBAction func likeBtnTapped(_ sender: UIButton) {
        liked = !liked
        if liked{
            likeBtn.setImage(UIImage(named: "Liked.png"), for: .normal)
            doubleClick()
            
        }
        else{
            likeBtn.setImage(UIImage(named: "Like.png"), for: .normal)
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

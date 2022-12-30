//
//  ViewController.swift
//  Instagram clone
//
//  Created by Peoplelink on 28/12/22.
//

import UIKit

var allPosts = userData(userInfo: completeUserData(posts: [userPost(userName: "virat.kholi", userAvatar: "ViratKholi.png", userLoaction: "Delhi, India", userPostId: 01, userPost: ["ViratBatting.png"], postLikes: 20123, postComments: 102, postTime: "55 minutes ago"),userPost(userName: "icc", userAvatar: "icc.png", userLoaction: "Hyderabad", userPostId: 02, userPost: ["WorldCup.png"], postLikes: 82123, postComments: 172, postTime: "25 minutes ago"),userPost(userName: "fifaworldcup", userAvatar: "fifa.png", userLoaction: "Qatar", userPostId: 03, userPost: ["fifa.png"], postLikes: 67123, postComments: 492, postTime: "35 minutes ago"),userPost(userName: "fifaworldcup", userAvatar: "fifa.png", userLoaction: "Qatar", userPostId: 03, userPost: ["fifa.png"], postLikes: 67123, postComments: 492, postTime: "35 minutes ago"),userPost(userName: "fifaworldcup", userAvatar: "fifa.png", userLoaction: "Qatar", userPostId: 03, userPost: ["fifa.png"], postLikes: 67123, postComments: 492, postTime: "35 minutes ago")],
                                                       
                                                       
stories: [userStory(storyUserName: "mevidyutjamwal", storyUserAvatar: "VidyutJamwal.png", storyViewed: false)]))

//var allUserInfo1 = userData(userInfo: completeUserData(stories: [userStory(storyUserName: "mevidyutjamwal", storyUserAvatar: "VidyutJamwal.png", storyViewed: false)], posts: [userPost(userName: "icc", userAvatar: "icc.png", userLoaction: "Hyderabad", userPostId: 02, userPost: ["WorldCup.png"], postLikes: 82123, postComments: 172, postTime: "25 minutes ago")]))
//
//var allUserInfo2 = userData(userInfo: completeUserData(stories: [userStory(storyUserName: "__beerus___", storyUserAvatar: "Beerus.png", storyViewed: false)], posts: [userPost(userName: "fifaworldcup", userAvatar: "fifa.png", userLoaction: "Qatar", userPostId: 03, userPost: ["fifa.png"], postLikes: 67123, postComments: 492, postTime: "35 minutes ago")]))
//
//var allUserInfo3 = userData(userInfo: completeUserData(stories: [userStory(storyUserName: "cristanioronaldo", storyUserAvatar: "Ronaldo.png", storyViewed: false)], posts: [userPost(userName: "leomessi", userAvatar: "messi.png", userLoaction: "Argentina", userPostId: 04, userPost: ["messi.png"], postLikes: 72123, postComments: 992, postTime: "1 hr ago")]))


class ViewController: UIViewController {

    @IBOutlet weak var instaStoryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allPosts.userInfo.posts.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0{
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "InstaStoryTableViewCell") as? InstaStoryTableViewCell else {
                return UITableViewCell()
            }
            
            return cell
        }
        else {
            guard let cell2 = tableView.dequeueReusableCell(withIdentifier: "InstaPostTableViewCell") as? InstaPostTableViewCell else {
                return UITableViewCell()
            }
            return cell2
        }
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 120
        }
        else {
            return 500
        }
    }
//
    
}


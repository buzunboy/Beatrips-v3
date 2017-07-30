//
//  EventsDetailViewController.swift
//  beatrips
//
//  Created by Burak Uzunboy on 29.07.2017.
//  Copyright © 2017 Burak Uzunboy. All rights reserved.
//

import UIKit

class EventsDetailViewController: UIViewController {

    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var venueImage: UIImageView!
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventDate: UILabel!
    @IBOutlet weak var venueTitle: UILabel!
    @IBOutlet weak var detailText: UILabel!
    
    @IBOutlet weak var seenCount: UILabel!
    @IBOutlet weak var likeCount: UILabel!
    
    @IBOutlet weak var commentsTitle: UILabel!
    @IBOutlet weak var latestCommentDetail: UILabel!
    @IBOutlet weak var latestCommentUserImage: UIImageView!
    @IBOutlet weak var latestCommentUser: UILabel!
    @IBOutlet weak var latestCommentDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.backgroundColor = UIColor.clear
        self.navigationController?.setToolbarHidden(true, animated: true)
        self.navigationController?.setNavigationBarHidden(true, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

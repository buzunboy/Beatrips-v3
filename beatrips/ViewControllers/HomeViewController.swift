//
//  HomeViewController.swift
//  beatrips
//
//  Created by Burak Uzunboy on 29.07.2017.
//  Copyright © 2017 Burak Uzunboy. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, iCarouselDataSource, iCarouselDelegate {
    
    @IBOutlet var carousel: iCarousel!

    var items = [1,2,3,4,6]

    override func viewDidLoad() {
        super.viewDidLoad()
        carousel.type = .linear
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        return cell
    }
    
    func numberOfItems(in carousel: iCarousel) -> Int {
        return items.count
    }
    
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {

        var itemView = UINib(nibName: "EventsView", bundle: nil).instantiate(withOwner: nil, options: nil).first as! EventsView
        itemView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width * 0.9, height: 240)
        
        itemView.eventName.text = String(index)
        itemView.eventDate.text = "10 Temmuz"
        return itemView

        //reuse view if available, otherwise create a new view
      
        //return itemView
    }
    
    func carousel(_ carousel: iCarousel, valueFor option: iCarouselOption, withDefault value: CGFloat) -> CGFloat {
      
        if (option == .wrap) {
            return 1
        }
        return value
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

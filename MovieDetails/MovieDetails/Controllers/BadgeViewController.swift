//
//  BadgeViewController.swift
//  MovieDetails
//
//  Created by Bala B. Animeti on 21/10/16.
//  Copyright © 2016 Exilant. All rights reserved.
//

import UIKit

class BadgeViewController: UIViewController {
    var index: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation

     //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        index = (sender as! UIButton).tag
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        
        
    }
}

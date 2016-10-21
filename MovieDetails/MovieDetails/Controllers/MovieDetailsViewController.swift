//
//  MovieDetailsViewController.swift
//  MovieDetails
//
//  Created by Bala B. Animeti on 21/10/16.
//  Copyright © 2016 Exilant. All rights reserved.
//

import UIKit
/*
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}

fileprivate func > <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l > r
  default:
    return rhs < lhs
  }
}
*/

class MovieDetailsViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionView: UITextView!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var charactersLabel: UILabel!
    @IBOutlet weak var directorsLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var movieDetails :MovieModel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateMovieData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backAction(_ sender: UIBarButtonItem) {
         dismiss(animated: true, completion: nil)
    }
    
    func populateMovieData() {
            let url = URL(string:(self.movieDetails?.url)!)
            let data = try? Data(contentsOf: url!)
            if (data?.count)! > 0  {
                self.image.image = UIImage(data:data!)
            }
            
            self.descriptionView.text = self.movieDetails.description as String
            self.languageLabel.text = self.movieDetails.language as String
            self.charactersLabel.text = self.movieDetails.language as String
            self.directorsLabel.text = self.movieDetails.directors as String
            self.ratingLabel.text = self.movieDetails.rating as String
            self.navigationItem.title = self.movieDetails.title as String
    }
}

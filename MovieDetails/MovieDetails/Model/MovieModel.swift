//
//  MovieModel.swift
//  MovieDetails
//
//  Created by Bala B. Animeti on 21/10/16.
//  Copyright © 2016 Exilant. All rights reserved.
//

import Foundation

import UIKit

class MovieModel{
    
    var title: String
    var url: String
    var description: NSString
    var rating: NSString
    var language: NSString
    var characters: NSString
    var directors: NSString
    
    init?(title: String, url: String, description: String, rating: String, language: String, characters: String, directors: String){
        
        self.title = title
        self.url = url
        self.description = description as NSString
        self.rating = rating as NSString
        self.language = language as NSString
        self.characters = characters as NSString
        self.directors = directors as NSString
    }
}

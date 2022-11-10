//
//  MovieViewModel.swift
//  DiffWayApiCalling
//
//  Created by Bhumika Patel on 10/11/22.
//

import UIKit

class MovieViewModel: NSObject {

    var artistName: String?
    var trackName: String?
    
   // D I
    
    init(movie:MovieModel){
        self.artistName = movie.artistName
        self.trackName = movie.trackName
    }
    
}


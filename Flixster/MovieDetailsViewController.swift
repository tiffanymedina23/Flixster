//
//  MovieDetailsViewController.swift
//  Flixster
//
//  Created by Tiffany Medina on 9/14/20.
//  Copyright © 2020 tiffanymedina23. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var Backdrop: UIImageView!
    @IBOutlet weak var PosterImage: UIImageView!
    @IBOutlet weak var TitleDetails: UILabel!
    @IBOutlet weak var SynopsisDetails: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        TitleDetails.text = movie["title"] as? String
        TitleDetails.sizeToFit()
        
        SynopsisDetails.text = movie["overview"] as? String
        SynopsisDetails.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        PosterImage.af_setImage(withURL: posterUrl!)
        
        let backUrl = "https://image.tmdb.org/t/p/w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: backUrl + backdropPath)
        
        Backdrop.af_setImage(withURL: backdropUrl!)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

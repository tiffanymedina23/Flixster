//
//  GridDetailsViewController.swift
//  Flixster
//
//  Created by Tiffany Medina on 9/14/20.
//  Copyright © 2020 tiffanymedina23. All rights reserved.
//

import UIKit
import AlamofireImage

class GridDetailsViewController: UIViewController {

    @IBOutlet weak var Backdrop: UIImageView!
    @IBOutlet weak var PosterView: UIImageView!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var SynopsisLabel: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        TitleLabel.text = movie["title"] as? String
        TitleLabel.sizeToFit()
               
        SynopsisLabel.text = movie["overview"] as? String
        SynopsisLabel.sizeToFit()
               
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
               
        PosterView.af_setImage(withURL: posterUrl!)
               
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

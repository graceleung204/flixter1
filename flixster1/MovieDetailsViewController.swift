//
//  MovieDetailsViewController.swift
//  flixster1
//
//  Created by Grace Leung on 2/27/20.
//  Copyright © 2020 Grace Leung. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {

    
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var backdropView: UIImageView!
    
    var movie: [String:Any]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        posterView.af_setImage(withURL: posterUrl!)
        
        titleLabel.text = movie["title"] as! String
        synopsisLabel.text = movie["overview"] as! String
        
        
        // Do any additional setup after loading the view.
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

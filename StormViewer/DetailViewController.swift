//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Danjuma Nasiru on 18/04/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var selectedImage : String?
    var totalImageCount = 0
    var imagePosition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(imagePosition + 1) of \(totalImageCount)"

        navigationController?.navigationBar.prefersLargeTitles = false
        if let imageToload = selectedImage{
            imageView.image = UIImage(named: imageToload)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
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

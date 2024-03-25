//
//  ViewController.swift
//  image
//
//  Created by apple on 7/17/23.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var add: UIButton!
    
    @IBOutlet weak var del: UIButton!
    
    let imagepicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        imagepicker.delegate = self
        image.layer.borderWidth = 12
        image.layer.cornerRadius = .init(120)
        image.layer.borderColor = .init(red: 0, green: 0, blue: 225, alpha: 100)
        }


    @IBAction func clean(_ sender: Any) {
        
        image.image = nil
        del.isHidden = true
        
    }
    @IBAction func clickact(_ sender: Any) {
        
        
        imagepicker.sourceType = .savedPhotosAlbum
        
        self.present(imagepicker, animated: true)
        
        }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let i =  info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        image.image = i
        del.isHidden = false
        
        self.dismiss(animated: true)
        
    }
}


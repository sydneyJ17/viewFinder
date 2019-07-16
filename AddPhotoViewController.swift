//
//  AddPhotoViewController.swift
//  viewFinder
//
//  Created by Apple on 7/16/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class AddPhotoViewController: UIViewController , UIImagePickerControllerDelegate , UINavigationControllerDelegate {

        var imagePicker = UIImagePickerController()
        
        @IBOutlet weak var imageView: UIImageView!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            imagePicker.delegate = self
        }
        
        @IBAction func takeSelfieTapped(_ sender: UIButton) {
            imagePicker.sourceType = .camera
            
            present(imagePicker , animated: true, completion: nil)
        }
        @IBAction func libraryButtonTapped(_ sender: UIButton) {
            imagePicker.sourceType = .photoLibrary
            present(imagePicker, animated: true , completion: nil)
        }
    @IBAction func albumsButtonTapped(_ sender: UIButton){
        imagePicker.sourceType = .savedPhotosAlbum
        present(imagePicker, animated: true , completion: nil)

    }
    
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let selectedImage = info[UIImagePickerController.InfoKey.originalImage]as? UIImage{imageView.image = selectedImage}
            
            imagePicker.dismiss(animated: true, completion: nil)
        }

}

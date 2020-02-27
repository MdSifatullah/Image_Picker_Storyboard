//
//  ViewController.swift
//  Image Picker
//
//  Created by Md Sifat on 2/27/20.
//  Copyright © 2020 Md Sifat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imagePicker = UIImagePickerController()


    @IBOutlet weak var imageVIew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }


    @IBAction func onClickBtn(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        present(imagePicker, animated: true, completion: nil)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            imageVIew.image = image
            
        }
        dismiss(animated: true, completion: nil)
    }
    
}

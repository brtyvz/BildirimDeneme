//
//  ViewController.swift
//  BildirimDeneme
//
//  Created by Berat Yavuz on 11.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yazdırLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bildirim(_ sender: Any) {
       //butona tıkladığımızda alert oluşturacak
        let alertController = UIAlertController(title: "Başlık", message: "kaydet", preferredStyle: .alert)
        // oluşturulan alerte şifre ve mail textfieldi ekler
        alertController.addTextField{
            textfield in
            textfield.placeholder = "Mail"
            textfield.keyboardType = .emailAddress
        }
        alertController.addTextField{
            textfield in
            textfield.placeholder = "Şifre"
            textfield.isSecureTextEntry = true
        }
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .destructive) { action in
            let alinanEmail = (alertController.textFields![0] as UITextField).text!
            let alinanSifre = (alertController.textFields![1] as UITextField).text!
            self.yazdırLabel.text = "mail:\(alinanEmail)-sifre:\(alinanSifre)"
        }
        //tektler görülsün diye
        alertController.addAction(kaydetAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func kaydet(_ sender: Any) {
    }
    
    
}


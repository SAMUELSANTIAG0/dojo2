//
//  DEtlheViewControler.swift
//  dojo2
//
//  Created by Student on 3/8/16.
//  Copyright © 2016 Student. All rights reserved.
//

import UIKit

class DEtlheViewControler: UIViewController {
    
    @IBOutlet weak var imgMusica: UIImageView!
    @IBOutlet weak var nomeMusica: UILabel!
    @IBOutlet weak var nomeBanda: UILabel!
    
    
    var musica:Musica!

    override func viewDidLoad() {
        super.viewDidLoad()

        imgMusica.image = UIImage(named: self.musica!.foto!)
        nomeMusica.text = self.musica!.nome
        nomeBanda.text = self.musica!.artista
        
        
        
        print(self.musica?.nome)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

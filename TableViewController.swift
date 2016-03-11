//
//  TableViewController.swift
//  dojo2
//


import UIKit

class TableViewController: UITableViewController {
    
    /* TESTE DE ALTERACAO */

    
    var musicas: [Musica] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        musicas.append(Musica(foto: "Acdc_Highway_to_Hell", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "Acdc_Highway_to_Hell", nome: "Girls Got ", artista: "AC-DC", album: "Highway To Hell", tempo: "3:23"))
              musicas.append(Musica(foto: "3", nome: "Walk All Over You", artista: "AC-DC", album: "Highway To Hell", tempo: "5:10"))
              musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
              musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
        musicas.append(Musica(foto: "4", nome: "Highway To Hell", artista: "AC-DC", album: "Highway To Hell", tempo: "3:28"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        as! TableViewCell
        
        let musica = musicas[indexPath.row]
        
        cell.indexLabel.text = "\(indexPath.row+1)"
        cell.musicName.text = musica.nome
        cell.duration.text = musica.tempo
        // Configure the cell...

        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detalhe" {
            if let index = self.tableView.indexPathForSelectedRow {
                let musica = musicas[index.row]
                
                                if let controller = segue.destinationViewController as? DEtlheViewControler {
                                    controller.musica = musica
                                }
            }
        }
    }

}

//
//  ViewController.swift
//  Peliculas
//
//  Created by Alumno on 9/18/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var peliculas : [Pelicula] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        peliculas.append(Pelicula(titulo : "Pelicula1", director : "Robert Wile", año : 1992))
        peliculas.append(Pelicula(titulo : "Pelicula2", director : "Guile Norman", año : 1993))
        peliculas.append(Pelicula(titulo : "Pelicula3", director : "Alexander Fruit", año : 1994))
        
  
    }

    //Number of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPeliculas") as? CeldaPeliculaController
        
        celda?.lblPelicula.text = peliculas[indexPath.row].titulo
        celda?.lblAño.text = "\(peliculas[indexPath.row].año)"
        celda?.lblDirector.text = peliculas[indexPath.row].director

        return celda!
    }
}






//
//  ViewController.swift
//  Escuela
//
//  Created by Alumno on 10/7/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaAlumnosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 59
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as! CeldaAlumnoController
        celda.lblNombre.text = alumnos[indexPath.row].nombre
        celda.lblCarrera.text = alumnos[indexPath.row].carrera
        celda.lblMatricula.text = alumnos[indexPath.row].matricula
        
        return celda
    }
    
    
    var alumnos : [Alumno] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Alumnos"
        
        alumnos.append(Alumno(nombre: "Pedro Orochimaru", matricula: "99999", correo: "pedro@escuela.edu.mx", celular: "6665554443", carrera: "Arquitectura"))
        alumnos.append(Alumno(nombre: "Manuel Datebayo", matricula: "99978", correo: "datebayo@escuela.edu.mx", celular: "6665554432", carrera: "Multimedia"))
        alumnos.append(Alumno(nombre: "Javier Lopez", matricula: "99949", correo: "Javi@escuela.edu.mx", celular: "6665554233", carrera: "Industrial"))    }
    
}


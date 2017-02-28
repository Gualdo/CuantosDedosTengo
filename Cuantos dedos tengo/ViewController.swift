//
//  ViewController.swift
//  Cuantos dedos tengo
//
//  Created by Eduardo D De La Cruz Marr on 23/1/17.
//  Copyright © 2017 Eduardo D De La Cruz Marrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet var fingersImage: UIImageView!
    @IBOutlet var messageLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //********************************************* Acciones de los botones de adivinar *********************************************//
    
    @IBAction func zeroButtonPressed(_ sender: UIButton)
    {
        validation(randomInt: randomCalc(), selection: 0)
    }
    
    @IBAction func oneButtonPressed(_ sender: UIButton)
    {
        validation(randomInt: randomCalc(), selection: 1)
    }
    
    @IBAction func twoButtonPressed(_ sender: UIButton)
    {
        validation(randomInt: randomCalc(), selection: 2)
    }
    
    @IBAction func threeButtonPressed(_ sender: UIButton)
    {
        validation(randomInt: randomCalc(), selection: 3)
    }
    
    @IBAction func fourButtonPressed(_ sender: UIButton)
    {
        validation(randomInt: randomCalc(), selection: 4)
    }
    
    @IBAction func fiveButtonPressed(_ sender: UIButton)
    {
        validation(randomInt: randomCalc(), selection: 5)
    }
    
    //**************************** Funcion que valida el juego y muestra las imagenes de los dedos ****************************//
    
    func validation(randomInt : Int , selection : Int)
    {
        if randomInt == 0
        {
            fingersImage.image = #imageLiteral(resourceName: "zeroFingers")
            
            if selection == 0
            {
                alertWin()
            }
            else
            {
                alertLoose()
            }
        }
        else if randomInt == 1
        {
            fingersImage.image = #imageLiteral(resourceName: "oneFinger")
            
            if selection == 1
            {
                alertWin()
            }
            else
            {
                alertLoose()
            }
        }
        else if randomInt == 2
        {
            fingersImage.image = #imageLiteral(resourceName: "twoFingers")
            
            if selection == 2
            {
                alertWin()
            }
            else
            {
                alertLoose()
            }
        }
        else if randomInt == 3
        {
            fingersImage.image = #imageLiteral(resourceName: "threeFingers")
            
            if selection == 3
            {
                alertWin()
            }
            else
            {
                alertLoose()
            }
        }
        else if randomInt == 4
        {
            fingersImage.image = #imageLiteral(resourceName: "fourFingers")
            
            if selection == 4
            {
                alertWin()
            }
            else
            {
                alertLoose()
            }
        }
        else
        {
            fingersImage.image = #imageLiteral(resourceName: "fiveFingers")
            
            if selection == 5
            {
                alertWin()
            }
            else
            {
                alertLoose()
            }
        }
    }
    
    //**************************** Funcion que calcula y devuelve el Ramdom casteado com Int ****************************//
    
    func randomCalc() -> (Int)
    {
        let randomNum:UInt32 = arc4random_uniform(6)
        return Int(randomNum)
    }
    
    //**************************** Funcion que muestra el alerta y el texto informativo de la aplicacion en casio de GANAR ****************************//
    
    func alertWin()
    {
        messageLabel.text = "Al parecer dominas el arte de la adivinación... Aunque sigo creyendo que hiciste trampa"
        
        let alertWin : UIAlertController = UIAlertController(title: "Me haces tramapa" , message : "No se como pero acertaste" , preferredStyle : .alert)
        let okAction : UIAlertAction = UIAlertAction(title : "Soy muy buen@" , style : .default , handler : nil)
        
        alertWin.addAction(okAction)
        
        present(alertWin, animated : true, completion : nil)
    }
    
    //**************************** Funcion que muestra el alerta y el texto informativo de la aplicacion en casio de PERDER ****************************//
    
    func alertLoose()
    {
        messageLabel.text = "El arte de la adivinación no es para todos, si lo deseas sigue intentando... Aunque no creo que logres vencerme"
        
        let alertLoose : UIAlertController = UIAlertController(title: "No tienes mi vision" , message : "No estuviste ni cerca" , preferredStyle : .alert)
        let okAction : UIAlertAction = UIAlertAction(title : "Intentare de nuevo" , style : .default , handler : nil)
        
        alertLoose.addAction(okAction)
        
        present(alertLoose, animated : true, completion : nil)
    }
}

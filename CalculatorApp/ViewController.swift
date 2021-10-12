//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Marilise Morona on 08/10/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlet
    // Outlet faz referência a parte visual
   
    
    @IBOutlet weak var uibAC: UIButton!
    @IBOutlet weak var uibSinal: UIButton!
    @IBOutlet weak var uibPercent: UIButton!
    @IBOutlet weak var uibDivisor: UIButton!
    @IBOutlet weak var uibMultiplicator: UIButton!
    @IBOutlet weak var uibSubtractor: UIButton!
    @IBOutlet weak var uibSum: UIButton!
    @IBOutlet weak var uibEquals: UIButton!
    @IBOutlet weak var uibComma: UIButton!
    @IBOutlet weak var uibNine: UIButton!
    @IBOutlet weak var uibEight: UIButton!
    @IBOutlet weak var uibSeven: UIButton!
    @IBOutlet weak var uibSix: UIButton!
    @IBOutlet weak var uibFive: UIButton!
    @IBOutlet weak var uibFour: UIButton!
    @IBOutlet weak var uibThree: UIButton!
    @IBOutlet weak var uibTwo: UIButton!
    @IBOutlet weak var uibOne: UIButton!
    @IBOutlet weak var uibZero: UIButton!
    @IBOutlet weak var uitfVisor: UITextField!
    
    
    
    // MARK: - Variáveis
    
    var visorText: String = ""
   
    
    
    // MARK: - Ciclo de Vida (life cycle)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ///Inicia com o visor zerado
        clearVisor()
    }
         
    // MARK: - Metodos
    
    /// Zera o visor
    func clearVisor(){
        visorText = ""
        uitfVisor.text = "0"
    }
    
    /// Printa os valores no visor
    func printInVisor(value: String){
        visorText = visorText + value
        uitfVisor.text = visorText
    }
    
    ///Recupera o operator e executa a operação matemática
    func calculator(){
        let expression = NSExpression(format: visorText)
        let result = expression.expressionValue(with: nil, context: nil) as! Double
        let resultInString = formatResult(result: result)
        uitfVisor.text = resultInString
        
    }
    ///Formata o resultado
    func formatResult(result: Double) -> String{
        if result.truncatingRemainder(dividingBy: 1)==0{
            return String(format: "%.0f", result)
        }
        else{
            return String(format: "%.2f", result)
        }
    }
    
    ///Altera o sinal da expressão
    /*func changedTheSignal(){
        var modificator: Int = -1
        var value : Int
        
        for value in visorText {
            
            if value.hashValue != 0 {
                newValue = value * modificator
                value = newValue
            } else {
                value == value
            }
        }
        
    }*/
    ///Cálcula o valor percentual
    func applyPercent(){
        var percent = visorText.replacingOccurrences(of: "%", with: "*0.01")
    }
    
    
    // MARK: - IBAction
    // Action faz referência a ação
    
    ///Retorna o resultado da operação matemática quando o botão Equals é apertado
    @IBAction func uibEquals(_ sender: Any) {
        calculator()
    }
    ///Chama o método que Zera o visor quando o botão AC é apertado
    @IBAction func uibAC(_ sender: Any) {
        clearVisor()
    }
    ///Chama o método que Altera o sinal da expressão
    @IBAction func uibSinal(_ sender: Any) {
        //changedTheSignal()
    }
    ///Chama o método que printa o valor no visor, neste caso o .
    @IBAction func uibComma(_ sender: Any) {
        printInVisor(value: ".")
    }
    ///Chama o método que printa o valor no visor, neste caso o %, e o método de cálculo percentual
    @IBAction func uibPercent(_ sender: Any) {
        printInVisor(value: "%")
        applyPercent()
    }
    ///Chama o método que printa o valor no visor, neste caso o /
    @IBAction func uibDivisor(_ sender: Any) {
        printInVisor(value: "/")
    }
    ///Chama o método que printa o valor no visor, neste caso o *
    @IBAction func uibMultiplicator(_ sender: Any) {
        printInVisor(value: "*")
    }
    ///Chama o método que printa o valor no visor, neste caso o -
    @IBAction func uibSubtractor(_ sender: Any) {
        printInVisor(value: "-")
    }
    ///Chama o método que printa o valor no visor, neste caso o +
    @IBAction func uibSum(_ sender: Any) {
        printInVisor(value: "+")
    }
    ///Chama o método que printa o valor no visor, neste caso o 0
    @IBAction func uibZero(_ sender: Any) {
        printInVisor(value: "0")
    }
    ///Chama o método que printa o valor no visor, neste caso o 1
    @IBAction func uibOne(_ sender: Any) {
        printInVisor(value: "1")
    }
    ///Chama o método que printa o valor no visor, neste caso o 2
    @IBAction func uibTwo(_ sender: Any) {
        printInVisor(value: "2")
    }
    ///Chama o método que printa o valor no visor, neste caso o 3
    @IBAction func uibThree(_ sender: Any) {
        printInVisor(value: "3")
    }
    ///Chama o método que printa o valor no visor, neste caso o 4
    @IBAction func uibFour(_ sender: Any) {
        printInVisor(value: "4")
    }
    ///Chama o método que printa o valor no visor, neste caso o 5
    @IBAction func uibFive(_ sender: Any) {
        printInVisor(value: "5")
    }
    ///Chama o método que printa o valor no visor, neste caso o 6
    @IBAction func uibSix(_ sender: Any) {
        printInVisor(value: "6")
    }
    ///Chama o método que printa o valor no visor, neste caso o 7
    @IBAction func uibSeven(_ sender: Any) {
        printInVisor(value: "7")
    }
    ///Chama o método que printa o valor no visor, neste caso o 8
    @IBAction func uibEight(_ sender: Any) {
        printInVisor(value: "8")
    }
    ///Chama o método que printa o valor no visor, neste caso o 9
    @IBAction func uibNine(_ sender: Any) {
        printInVisor(value: "9")
    }
}




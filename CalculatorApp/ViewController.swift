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
    var temp: Double = 0
    var percent: Double = 0
   
    
    
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
    func changedTheSignal(){
        temp = Double(visorText) ?? 0
        temp = temp * -1
        uitfVisor.text = String(temp)
        
    }
    ///Cálcula o valor percentual
    func applyPercent(){
        percent = Double(visorText) ?? 0
        percent = percent * 0.01
        uitfVisor.text = String(percent)
        
    }
    
    
    // MARK: - IBAction
    // Action faz referência a ação
    
    ///Retorna o resultado da operação matemática quando o botão Equals é apertado
    @IBAction func uibEquals(_ sender: UIButton) {
        calculator()
    }
    ///Chama o método que Zera o visor quando o botão AC é apertado
    @IBAction func uibAC(_ sender: UIButton) {
        clearVisor()
    }
    ///Chama o método que Altera o sinal da expressão
    @IBAction func uibSinal(_ sender: UIButton) {
        changedTheSignal()
    }
    ///Chama o método que printa o valor no visor, neste caso o .
    @IBAction func uibComma(_ sender: UIButton) {
        printInVisor(value: ".")
    }
    ///Chama o método que printa o valor no visor, neste caso o %, e o método de cálculo percentual
    @IBAction func uibPercent(_ sender: UIButton) {
        //printInVisor(value: "%")
        applyPercent()
    }
    ///Chama o método que printa o valor no visor, neste caso o /
    @IBAction func uibDivisor(_ sender: UIButton) {
        printInVisor(value: "/")
    }
    ///Chama o método que printa o valor no visor, neste caso o *
    @IBAction func uibMultiplicator(_ sender: UIButton) {
        printInVisor(value: "*")
    }
    ///Chama o método que printa o valor no visor, neste caso o -
    @IBAction func uibSubtractor(_ sender: UIButton) {
        printInVisor(value: "-")
    }
    ///Chama o método que printa o valor no visor, neste caso o +
    @IBAction func uibSum(_ sender: UIButton) {
        printInVisor(value: "+")
    }
    ///Chama o método que printa o valor no visor, neste caso o 0
    @IBAction func uibZero(_ sender: UIButton) {
        printInVisor(value: "0")
    }
    ///Chama o método que printa o valor no visor, neste caso o 1
    @IBAction func uibOne(_ sender: UIButton) {
        printInVisor(value: "1")
    }
    ///Chama o método que printa o valor no visor, neste caso o 2
    @IBAction func uibTwo(_ sender: UIButton) {
        printInVisor(value: "2")
    }
    ///Chama o método que printa o valor no visor, neste caso o 3
    @IBAction func uibThree(_ sender: UIButton) {
        printInVisor(value: "3")
    }
    ///Chama o método que printa o valor no visor, neste caso o 4
    @IBAction func uibFour(_ sender: UIButton) {
        printInVisor(value: "4")
    }
    ///Chama o método que printa o valor no visor, neste caso o 5
    @IBAction func uibFive(_ sender: UIButton) {
        printInVisor(value: "5")
    }
    ///Chama o método que printa o valor no visor, neste caso o 6
    @IBAction func uibSix(_ sender: UIButton) {
        printInVisor(value: "6")
    }
    ///Chama o método que printa o valor no visor, neste caso o 7
    @IBAction func uibSeven(_ sender: UIButton) {
        printInVisor(value: "7")
    }
    ///Chama o método que printa o valor no visor, neste caso o 8
    @IBAction func uibEight(_ sender: UIButton) {
        printInVisor(value: "8")
    }
    ///Chama o método que printa o valor no visor, neste caso o 9
    @IBAction func uibNine(_ sender: UIButton) {
        printInVisor(value: "9")
    }
    
}




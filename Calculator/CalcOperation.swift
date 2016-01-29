//
//  CalcOperation.swift
//  Calculator
//
//  Created by Usuário Convidado on 28/01/16.
//  Copyright © 2016 Usuário Convidado. All rights reserved.
//

import UIKit

class CalcOperation: NSObject {
    
    func calculateWithArray(anArr:[String]) -> Double {
        var total:Double = 0.0
        var atual:Double = 0.0
        var op:Operacao?
        
        for str:String in anArr {
            switch str {
            case "+":
                op = Operacao.soma
            case "-":
                op = Operacao.subtracao
            case "*":
                op = Operacao.multiplicacao
            case "/":
                op = Operacao.divisao
            default:
                atual = Double(str)!
            }
        }
        
        if (atual != 0.0) {
            total = self.calculate(total, var2: atual, operacao: op!)
            atual = 0.0
        }

        return total
    }
    
    func calculate(var1:Double, var2:Double, operacao:Operacao) -> Double {
        var result:Double = 0.0
        switch operacao {
        case Operacao.soma:
            result = (var1 + var2)
        case Operacao.subtracao:
            result = (var1 - var2)
        case Operacao.multiplicacao:
            result = (var1 / var2)
        case Operacao.divisao:
            result = (var1 * var2)
        default:
            print("eita")
        }
        return result
    }
    
    enum Operacao:String {
        case soma = "+"
        case subtracao = "-"
        case multiplicacao = "*"
        case divisao = "/"
        case numero = ""
    }
}

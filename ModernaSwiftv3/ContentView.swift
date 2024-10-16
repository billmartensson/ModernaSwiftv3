//
//  ContentView.swift
//  ModernaSwiftv3
//
//  Created by BillU on 2024-10-16.
//

import SwiftUI

struct ContentView: View {
    
    @State var calcresult : Int? = nil
    @State var mynumber = ""
    
    @State var errormessage : String? = nil
    
    /*
    func doPlus() {
        if Int(mynumber) == nil {
            errormessage = "INTE EN SIFFRA!!!"
        }
                
        if let usernumber = Int(mynumber) {
            calcresult = calcresult + usernumber
        }
    }

    func doMinus() {
        if Int(mynumber) == nil {
            errormessage = "INTE EN SIFFRA!!!"
        }
                
        if let usernumber = Int(mynumber) {
            calcresult = calcresult - usernumber
        }
    }
    */
    
    func doCalc(calcOperator : String) {
        if Int(mynumber) == nil {
            errormessage = "INTE EN SIFFRA!!!"
        }
        
        if calcresult == nil {
            calcresult = 0
        }
        
        if let usernumber = Int(mynumber) {
            if calcOperator == "plus" {
                calcresult = calcresult! + usernumber
            }
            if calcOperator == "minus" {
                calcresult = calcresult! - usernumber
            }
        }
    }

    
    var body: some View {
        VStack {
            
            if calcresult == nil {
                Text("Välkommen")
                    .font(.largeTitle)
            } else {
                Text("\(calcresult!)")
                    .font(.largeTitle)
            }
            
            if errormessage != nil {
                Text(errormessage!)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .background(Color.red)
            }
            
            TextField("Skriv en siffra", text: $mynumber)
            
            HStack {
                Button("PLUS") {
                    doCalc(calcOperator: "plus")
                }
                
                Button("MINUS") {
                    doCalc(calcOperator: "minus")
                }
            }
            
        }
        .padding()
    }
    
    
}

#Preview {
    ContentView()
}





/*
let usernumber = Int(mynumber)

if usernumber == nil {
    // FEL
} else {
    calcresult = calcresult + Int(mynumber)!
}
*/

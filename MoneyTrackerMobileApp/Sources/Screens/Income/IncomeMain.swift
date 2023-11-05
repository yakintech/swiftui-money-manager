//
//  IncomeMain.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct IncomeMain: View {
    
    var number = 0
    
    init(){
        number = 20
    }
    
    @AppStorage("counter") var counter : Int = 0
    var body: some View {
        VStack{
            Text("counter:  \(counter)")
            Text("number:  \(number)")
        }
        .onAppear(){
            //number = 40
        }
    }
}

struct IncomeMain_Previews: PreviewProvider {
    static var previews: some View {
        IncomeMain()
    }
}

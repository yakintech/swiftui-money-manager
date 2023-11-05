//
//  IncomeMain.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct IncomeMain: View {
    @AppStorage("counter") var counter : Int = 0
    var body: some View {
        Text("counter:  \(counter)")
    }
}

struct IncomeMain_Previews: PreviewProvider {
    static var previews: some View {
        IncomeMain()
    }
}

//
//  TabMain.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct TabMain: View {
    var body: some View {
        
        TabView{
            DashboardMain()
                .tabItem{
                    Label("Anasayfa", systemImage:"square.and.pencil")
                }
            
            IncomeMain()
                .tabItem{
                    Label("Gelirler", systemImage:"square.and.pencil")
                }
            
            ExpenseMain()
                .tabItem{
                    Label("Giderler", systemImage:"square.and.pencil")
                }
        }
        
    }
}

struct TabMain_Previews: PreviewProvider {
    static var previews: some View {
        TabMain()
    }
}

//
//  DashboardMain.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct DashboardMain: View {
    
    @State var expenses : [ExpenseModel] = []
    
    @State private var startDate : Date = Date()
    @State private var endDate : Date = Date()
    
    
    var body: some View {
        VStack{
         
            Button("Empty"){
                expenses = []
                let storageHelper = StorageHelper()
                storageHelper.setExpenses(expense: [])
            }
            .padding()
            Divider()
            
            DatePicker("Start Date", selection: $startDate)
                .padding()
            
            DatePicker("End Date", selection: $endDate)
                .padding()
            
            
            ForEach(expenses, id:\.self){item in
                HStack{
                    Text("Expense: \(item.note) AddDate: \(item.addDate)")
                        .padding()
                    Button("Delete"){
                      let deleteIndexNo = expenses.firstIndex(where: { $0.id == item.id})
                      expenses.remove(at: deleteIndexNo!)
                      
                      let storageHelper = StorageHelper()
                      storageHelper.setExpenses(expense: expenses)
                    
                        
                    }
                }
            }
    
        }
        .onAppear(){
            let storageHelper = StorageHelper()
            expenses = storageHelper.getExpenses()
            
        }
        .onDisappear(){
            startDate = Date()
            endDate = Date()
            print("Dashboard Disappear")
        }
    }
}

struct DashboardMain_Previews: PreviewProvider {
    static var previews: some View {
        DashboardMain()
    }
}

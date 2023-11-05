//
//  DashboardMain.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct DashboardMain: View {
    
    @State var expenses : [ExpenseModel] = []
    
    var body: some View {
        VStack{
         
            Button("Empty"){
                expenses = []
                let storageHelper = StorageHelper()
                storageHelper.setExpenses(expense: [])
            }
            ForEach(expenses, id:\.self){item in
                HStack{
                    Text(item.note)
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
            var storageHelper = StorageHelper()
            expenses = storageHelper.getExpenses()
        }
    }
}

struct DashboardMain_Previews: PreviewProvider {
    static var previews: some View {
        DashboardMain()
    }
}

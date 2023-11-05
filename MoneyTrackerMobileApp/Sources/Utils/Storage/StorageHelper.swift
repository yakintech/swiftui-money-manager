//
//  StorageHelper.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 4.11.2023.
//

import Foundation

class StorageHelper{
    
    
    func setExpenses(expense: [ExpenseModel]){
        
        if let encodedData = try?
            JSONEncoder().encode(expense){
            UserDefaults.standard.set(encodedData, forKey: "expenses")
        }
        
    }
    
    
    func getExpenses() -> [ExpenseModel]{
        
        var returnExpenseModel : [ExpenseModel] = []
        if let decodedData = UserDefaults.standard.object(forKey: "expenses") as? Data{
            
            if let expenseData = try? JSONDecoder().decode([ExpenseModel].self, from: decodedData){
                returnExpenseModel = expenseData
                return returnExpenseModel
            }
            return returnExpenseModel
        }
        return returnExpenseModel
    }
    
}


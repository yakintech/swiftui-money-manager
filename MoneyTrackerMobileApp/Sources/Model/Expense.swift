//
//  Expense.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import Foundation


struct ExpenseModel : Codable, Hashable{
    
    var id : String = ""
    var expenseTypeKey : Int = 0
    var expeneCategoryKey : Int = 0
    
    var note : String = ""
    
    //decimal tipi genellikle para formatlarında kullanılır
    var amount : Decimal = 0.0
    var addDate : Date = Date.now
}


struct ExpenseType : Hashable,Codable {
    var key : Int = 0
    var name : String = ""    // (1, Kredi Kartı) (2, Banka Kartı) (3, Nakit)
}


struct ExpenseCategory : Hashable,Codable {
    var key : Int = 0
    var name : String = ""  // (1, Eğitim) (2, Eğlence)
}




//
//  PickerHelper.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import Foundation



func GetAllExpenseTypes() -> [ExpenseType]{
    
    var expenseTypeList : [ExpenseType] = []
    
    let type1 = ExpenseType(key:1, name:"Kredi Kartı")
    let type2 = ExpenseType(key:2, name:"Banka Kartı")
    let type3 = ExpenseType(key:3, name:"Nakit")
    
    expenseTypeList.append(type1)
    expenseTypeList.append(type2)
    expenseTypeList.append(type3)
    
    return expenseTypeList
}


func GetAllExpenseCategories() -> [ExpenseCategory] {
    
    var expenseCategoryList : [ExpenseCategory] = []
    
    let category1 = ExpenseCategory(key:1, name:"Eğlence")
    let category2 = ExpenseCategory(key:2, name:"Sanat")
    let category3 = ExpenseCategory(key:3, name:"Fatura")
    let category4 = ExpenseCategory(key:4, name:"Kira")
    
    expenseCategoryList.append(category1)
    expenseCategoryList.append(category2)
    expenseCategoryList.append(category3)
    expenseCategoryList.append(category4)
    
    
    return expenseCategoryList
}

//
//  ExpenseMain.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct ExpenseMain: View {
    
    @State private var selectedType : ExpenseType? = ExpenseType()
    @State private var selectedCategory : ExpenseCategory? = ExpenseCategory()
    
    
    @State private var addDate : Date = Date()
    @State private var amount : Decimal = 0
    @State private var note : String = ""

    
    let formatter : NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    
    var body: some View {
        VStack{
            
            Picker("Ödeme yöntemi", selection: $selectedType){
                
                ForEach(GetAllExpenseTypes(), id:\.key){item in
                    Text(item.name)
                        .tag(item as ExpenseType?)
                }
                
            }
            
            Picker("Kategori", selection: $selectedCategory){
                
                ForEach(GetAllExpenseCategories(), id:\.key){item in
                    Text(item.name)
                        .tag(item as ExpenseCategory?)
                }
                
            }
             
            DatePicker("Tarih", selection: $addDate)
                .padding()
            
            TextField("$0.00", value:$amount, formatter: formatter)
                .keyboardType(.numberPad)
                .padding()
              
            
            TextField("Not", text:$note)
                .padding()
            
            
            
            Button("Ekle"){
               
                var newExpense = ExpenseModel()
                newExpense.id = UUID().uuidString
                newExpense.addDate = addDate
                newExpense.amount = amount
                newExpense.expenseTypeKey = selectedType?.key ?? 0
                newExpense.expeneCategoryKey = selectedCategory?.key ?? 0
                newExpense.note = note
                
                //instance almak - Mevcut class şablonunu kopyalamak
                let storageHelper = StorageHelper()
                var expenses = storageHelper.getExpenses()
            
                expenses.append(newExpense)
                
                storageHelper.setExpenses(expense: expenses)
                
                
            }
        }
    }
}

struct ExpenseMain_Previews: PreviewProvider {
    static var previews: some View {
        ExpenseMain()
    }
}

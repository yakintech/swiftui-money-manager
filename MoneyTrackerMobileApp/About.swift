//
//  About.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 5.11.2023.
//

import SwiftUI

struct About: View {
    
    @State var number = 30
    
    //init(){
      //  number = 40
        //print("About Init")
        //print(number)
    //}
    
    var body: some View {
        
        VStack{
            Text("Number: \(number)")
        }
   
       
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}

//
//  SplashView.swift
//  MoneyTrackerMobileApp
//
//  Created by İsmail Kocaoglu on 8.11.2023.
//

import SwiftUI

struct SplashView: View {
    @State private var opacity = 0.0 // opacity değerini tanımla
    @State private var isAnimating = false

    var body: some View {
        ZStack {
            Color.black.opacity(0.3)

            VStack {
                Image("MoneyTracker")
                    .resizable()
                    .scaledToFit()
                
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 2)
                    .scaleEffect(1.2)
                .opacity(opacity)
                
                VStack {
                    Spacer()
                    Text("Money APP").font(.largeTitle)
                        .foregroundColor(.white)
                        .offset(x:30,y: 15)
                        
                    Spacer()
                }
                   
            } // opacity değerini burada kullan
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 1)) {
                opacity = 1.0 // opacity'yi 1.0 yaparak yavaşça görünür hale getir
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

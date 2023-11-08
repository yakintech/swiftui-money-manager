//
//  ContentView.swift
//  MoneyTrackerMobileApp
//
//  Created by Çağatay Yıldız on 28.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showMainView = false

        var body: some View {
            NavigationView {
                ZStack {
                    if showMainView {
                        TabMain()
                    } else {
                        SplashView()
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1.8) {
                                    withAnimation {
                                        showMainView = true
                                    }
                                }
                            }
                    }
                }
                .navigationBarHidden(true)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

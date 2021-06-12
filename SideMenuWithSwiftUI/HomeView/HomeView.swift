//
//  ContentView.swift
//  SideMenuWithSwiftUI
//
//  Created by Jimoh Babatunde  on 21/05/2021.
//

import SwiftUI

struct HomeView: View {
    @State private var isSideShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isSideShowing {
                    SideMenuView(isSideShowing: $isSideShowing)
                }
                HomeContentView()
                    .cornerRadius(isSideShowing ? 20 : 10)
                    .shadow(color: .black, radius: isSideShowing ? 11 : 0)
                    .offset(x: isSideShowing ? 300 : 0,
                            y: isSideShowing ? 44 : 0)
                    .scaleEffect(isSideShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isSideShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .allowsHitTesting(isSideShowing ? false : true)
                    .navigationTitle("Home")
                
                
            }
            .onAppear() {
                isSideShowing = false
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HomeContentView: View {
    var body: some View {
        ZStack {
            Color(.white)
            HStack {
                Text("Hello, world!")
                    .padding()
                    .shadow(color: .red, radius: 30)
                Spacer()
            }
        }
    }
}

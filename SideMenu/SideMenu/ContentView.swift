//
//  ContentView.swift
//  SideMenu
//
//  Created by paramroop kaur on 05/10/22.
//

import SwiftUI

struct ContentView: View {
    @State private var showMenu = false
   
    var body: some View {
        VStack {
            mainInterfaceView
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension ContentView {
    var mainInterfaceView: some View {
        ZStack(alignment: .topLeading) {
            
            MainTabView()
                .navigationBarBackButtonHidden(showMenu)
            
            if showMenu {
                ZStack {
                    Color(.black)
                        .opacity(showMenu ? 0.25 : 0.0)
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        showMenu = false
                    }
                }
                .ignoresSafeArea()
            }
            
            SideMenuView()
                .frame(width: 300)
                .offset(x: showMenu ? 0 : -300 , y: 0)
                .background(showMenu ? Color.white: Color.clear)
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    withAnimation(.easeInOut) {
                        showMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width:32, height: 32)
                        .foregroundColor(Color(.systemGray))
                }
            }
        }
        .onAppear {
            showMenu = false
        }
    }
    
}

//
//  SideMenuView.swift
//  SideMenu
//
//  Created by paramroop kaur on 05/10/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
    VStack (alignment: .leading, spacing: 32) {
        VStack(alignment: .leading) {
            VStack (alignment: .leading, spacing: 4){
                Text("Setting")
                    .font(.headline)
            }
           
        }
        .padding(.leading)
        
        ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
            HStack(spacing: 16) {
                Image(systemName: option.imageName)
                    .font(.headline)
                    .foregroundColor(.gray)
                
                Text(option.title)
                    .foregroundColor(.black)
                    .font(.subheadline)
                
                Spacer()
            }
            .frame(height: 40)
            .padding(.horizontal)
        }
        Spacer()
      }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

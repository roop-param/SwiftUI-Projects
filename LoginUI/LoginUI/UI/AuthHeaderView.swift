//
//  AuthHeaderView.swift
//  LoginUI
//
//  Created by paramroop kaur on 05/10/22.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String
    
    var body: some View {
        
        
        VStack(alignment:.leading) {
            HStack { Spacer () }
            
            Text(title1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(title2)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemGray))
        .foregroundColor(.white)
        
       
    }

}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "Hello There.", title2: "Welcome.")
    }
}

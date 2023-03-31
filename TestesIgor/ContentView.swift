//
//  ContentView.swift
//  TestesIgor
//
//  Created by Alexandre Lemos da Silva on 30/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        GeometryReader{ reader in
            HStack(spacing: 0){
                Color.red
                    .frame(width: reader.size.width * (2/3))
                Color.green
                    .frame(width: reader.size.width * (1/3))
            }
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  exemplo3.swift
//  TestesIgor
//
//  Created by Alexandre Lemos da Silva on 30/03/23.
//

import SwiftUI

struct exemplo3: View {
    var body: some View {
        
        GeometryReader{
            reader in
        
        ZStack{
            Color.blue
                .coordinateSpace(name: "azul")
                .cornerRadius(10)
                .padding()
            
            Color.green
                .frame(height: reader.frame(in: .named("azul")).height * 1/2)
                //.coordinateSpace(name: "green")
                .cornerRadius(10)
                .padding()
            
            Color.black
                .frame(height: reader.frame(in: .named("azul")).height * 1/4)
                //.coordinateSpace(name: "black")
                .cornerRadius(10)
                .padding()

            Color.red
                .frame(height: reader.frame(in: .named("azul")).height * 1/8)
                //.coordinateSpace(name: "red")
                .cornerRadius(10)
                .padding()
        }
        }
    }
}

struct exemplo3_Previews: PreviewProvider {
    static var previews: some View {
        exemplo3()
    }
}

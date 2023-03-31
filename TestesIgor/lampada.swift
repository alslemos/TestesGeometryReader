//
//  lampada.swift
//  TestesIgor
//
//  Created by Alexandre Lemos da Silva on 30/03/23.
//

import SwiftUI

struct Window: View{
    @Binding var isOn: Bool
    
    var body: some View{
        VStack{
            Text(isOn ? "Nigh" : "Day")
            Image(systemName: isOn ? "moon.fill": "sun.max.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
        }
    }
    
}



struct lampada: View {
   
    @State var isOn = true
    
    var body: some View {
        VStack(spacing: 50){
            Image(systemName: isOn ? "lightbulb.fill": "lightbulb.slash")
                .resizable()
                .scaledToFit()
                .frame(width:50,height:50)
            Text(isOn ? "ON" : "OFF")
            
            Button("Light swith"){
                isOn.toggle()
            }
            Window(isOn: $isOn)
            
        }
        
        
    }
}

struct lampada_Previews: PreviewProvider {
    static var previews: some View {
        lampada()
    }
}

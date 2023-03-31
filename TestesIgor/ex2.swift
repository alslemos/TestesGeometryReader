//
//  ex2.swift
//  TestesIgor
//
//  Created by Alexandre Lemos da Silva on 30/03/23.
//

import SwiftUI

//struct SkyCard: View{
//    var skyItem: skyItem
//}



struct ex2: View {
    var body: some View {
        
        GeometryReader{
            reader in
            
            HStack{
                Image(systemName: "globe")
                Text("texto")
                    .font(.title)
            }
            .onTapGesture {
                print("Global eh \(reader.frame(in: .global).midX) h: \(reader.frame(in: .global).midY)")
                print("Local eh \(reader.frame(in: .local).midX) h: \(reader.frame(in: .local).midY)")
            }
        }
        
        
    }
}

struct ex2_Previews: PreviewProvider {
    static var previews: some View {
        ex2()
    }
}

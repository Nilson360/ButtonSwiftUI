//
//  ContentView.swift
//  Shared
//
//  Created by Noslin on 25/03/2022.
//

import SwiftUI

struct ContentView: View {
   // @State private var isPlaying: Bool = false
    @State private var compteur: Int = 0
    var body: some View {
//        Button(action:{
//            self.isPlaying.toggle()
//        }) {
//            Image(systemName:isPlaying ? "stop.circle.fill":"play.circle.fill")
//                .font(.system(size: 150))
//
//                .foregroundColor(isPlaying ? .red : .green)
//        }
      
        VStack{
          
            ActionButton(compteur: $compteur,image:"circle.fill" , color: .red)
            ActionButton(compteur: $compteur,image:"circle.fill" , color: .blue)
            ActionButton(compteur: $compteur,image:"circle.fill" , color: .green)
            
        }
        
    }

}

struct ActionButton: View {
    @Binding  var compteur: Int
    var image: String
    var color : Color
    var body: some View{
        
        Button(action: {
        self.compteur += 1
                    
        }){
            Image(systemName: "circle.fill")
                .font(.system(size:200))
                .foregroundColor(color)
                .overlay(
                    Text("\(compteur)")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                )
                
                
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
}

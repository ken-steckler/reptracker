//
//  ContentView.swift
//  reptracker
//
//  Created by Ken Steckler on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Button(action: {self.count += 1})
                {
                    Image(systemName: "plus.circle").foregroundColor(Color.white).font(.system(size: 90))
                        .frame(width: 300, height: 120)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(8)
                        .shadow(color: .red, radius: 3, x: 1, y: 1)
                }
            
            Text("\(count)").font(.system(size: 120))
            
            Button(action: {if (count > 0) {self.count -= 1}})
                {
                    Image(systemName: "minus.circle").foregroundColor(Color.white).font(.system(size: 50))
                        .frame(width: 300, height: 50)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(8)
                        .shadow(color: .green, radius: 3, x: 1, y: 1)
                }
            
            Button(action: {
                self.count = 0
            }) {
                Text("R e s e t").foregroundColor(Color.white).font(.system(size: 25))
                    .frame(width: 300)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(8)
                    .shadow(color: .blue, radius: 3, x: 1, y: 1)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

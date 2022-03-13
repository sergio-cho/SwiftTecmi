//
//  ContentView.swift
//  Appbeta
//
//  Created by sergio on 12/03/22.
//

import SwiftUI

struct ContentView: View {
    private var numeroofgimg = 4
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var currentIndex = 0
    
    //funciones
    func atras(){
        withAnimation{ currentIndex = currentIndex < 0 ? currentIndex - 1 : numeroofgimg}
    }
    
    func adelante(){
        withAnimation{ currentIndex = currentIndex < numeroofgimg ? currentIndex + 1 : 0}
    }
    //Controles
    var controles: some View{
        HStack{
            Button{
                atras()
            }label:{
                Image(systemName: "chevron.left")
            }
            Button{
                adelante()
            }label:{
                Image(systemName: "chevron.right")
            }
            
        }
    }
    
    
    var body: some View {
        GeometryReader{ proxy in
            VStack{
            TabView(selection: $currentIndex){
                ForEach(0..<numeroofgimg){
                    num in Image("\(num)")
                        .resizable()
                        .scaledToFill()
                        .overlay(Color.black.opacity(0.4))
                        .tag(num)
                }
            }.tabViewStyle(PageTabViewStyle())
            .clipShape(RoundedRectangle(cornerRadius: 5))
            .padding()
            .frame(width:proxy.size.width, height: proxy.size.height)
            .onReceive(timer, perform: { _ in
                //se prepara para la siguiente imagen
                adelante()
            })
                controles
        }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



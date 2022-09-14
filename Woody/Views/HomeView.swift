//
//  HomeView.swift
//  Woody
//
//  Created by user on 14.09.2022.
//

import SwiftUI

struct HomeView: View {
    @State var animate = false
    
    @State var flayer1: [String] = ["flyer5", "flyer6", "flyer7", "flyer8", "flyer9", "flyer10", "flayer11"]
    
    var body: some View {
        ZStack{
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                .task{
                    withAnimation(.easeInOut(duration: 7).repeatForever()){
                        animate.toggle()
                    }
                }
            
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
                .task {
                    withAnimation(.easeInOut(duration: 4).repeatForever()) {
                        animate.toggle()
                    }
                }
            
            ScrollView {
                VStack(spacing: 0.0){
                    CustomSearchBar()
                        .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
                    
                    ScrollSection()
                    
                    FlyerSection()
                        .padding(.top)
                    
                    FlyerSection(title: "Movies", flyer: flayer1)
                        .padding(.top)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

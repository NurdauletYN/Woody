//
//  ScrollSection.swift
//  Woody
//
//  Created by user on 14.09.2022.
//

import SwiftUI

struct ScrollSection: View {
    @State var title = "Your brands"
    
    @State var food: [String] = ["food1", "food2", "food3", "food4", "food5", "food6"]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20.0) {
                    ForEach(food.indices, id: \.self) { index in
                        Image(food[index])
                            .resizable()
                            .frame(width: 100, height: 70)
                            .cornerRadius(100)
                    }
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
            
        }
    }
}

struct ScrollSection_Previews: PreviewProvider {
    static var previews: some View {
        ScrollSection()
    }
}

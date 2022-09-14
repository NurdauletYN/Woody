//
//  FlyerSection.swift
//  Woody
//
//  Created by user on 14.09.2022.
//

import SwiftUI

struct FlyerSection: View {
    @State var title = "Flyers"
    
    @State var flyer: [String] = ["flyer1", "flyer2", "flyer3", "flyer4", "flyer5", "flyer6"]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
                .foregroundColor(.black)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20.0) {
                    ForEach(flyer.indices, id: \.self) { index in
                        Image(flyer[index])
                            .resizable()
                            .frame(width: 200, height: 250)
                            .cornerRadius(10)
                            
                    }
                }
                .offset(x: 20)
                .padding(.trailing, 40)
            }
            
        }
    }
}

struct FlyerSection_Previews: PreviewProvider {
    static var previews: some View {
        FlyerSection()
    }
}

//
//  ContentView.swift
//  Memorize
//
//  Created by Ishaan Bhasin on 2/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var emojiCount = 6
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid (columns: [GridItem(.adaptive(minimum: 75))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(.red)
        }
        .padding(.horizontal)
    }
}
struct CardView: View {
    @State var isFaceUp: Bool = false
    var content: String
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

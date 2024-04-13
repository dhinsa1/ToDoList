//
//  TLButton.swift
//  ToDoList
//
//  Created by Vikram Dhinsa on 4/13/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        })
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        // Action
    }
}

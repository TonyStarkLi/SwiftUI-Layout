//
//  Home.swift
//  SwiftUI-Layout
//
//  Created by Botao Li on 7/16/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import SwiftUI

struct Home : View {
    var body: some View {
		VStack(alignment: .leading, spacing: 20) {
			MenuRow(image: "person.crop.circle", text: "My Account")
			MenuRow(image: "creditcard", text: "Billing")
			MenuRow(image: "person.and.person", text: "Team")
			MenuRow(image: "arrow.uturn.down", text: "Sign out")
			Spacer()
		}
		.padding(.top, 20)
		.padding(30)
		.frame(minWidth: 0, maxWidth: .infinity)
		.background(Color.white)
		.cornerRadius(30)
		.padding(.trailing, 60)
		.shadow(radius: 20)
    }
}

#if DEBUG
struct Home_Previews : PreviewProvider {
    static var previews: some View {
        Home()
    }
}
#endif

struct MenuRow : View {
	var image = "creditcard"
	var text = "My Account"
	var body: some View {
		return HStack {
			Image(systemName: image)
				.imageScale(.large)
				.foregroundColor(Color.red)
				.frame(width: 32, height: 32)
			Text(text)
				.font(.headline)
			Spacer()
		}
	}
}

//
//  ContentView.swift
//  SwiftUI-Layout
//
//  Created by Botao Li on 7/5/19.
//  Copyright © 2019 Botao Li. All rights reserved.
//

import SwiftUI

struct ContentView : View {
	var body: some View {
		ZStack {
			
			VStack {
				Text("123")
			}
			.frame(width: 300.0, height: 220.0)
				.background(Color.blue)
				.cornerRadius(10)
				.shadow(radius: 20)
				.offset(x: 0, y: -20)

			
			VStack {
				HStack {
					VStack(alignment: .leading) {
						Text("UI Design")
							.font(.headline)
							.fontWeight(.bold)
							.color(Color("accent"))
							.padding(.top)
						Text("Certificate")
							.color(.white)
					}
					Spacer()
					Image("Logo")
						.resizable()
						.frame(width: 30.0, height: 30.0)
				}
				.padding(.horizontal)
				Spacer()
				Image("Background")
			}
			.frame(width: 340.0, height: 220.0)
				.background(Color.black)
				.cornerRadius(10)
				.shadow(radius: 20)
		}
	}
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
#endif

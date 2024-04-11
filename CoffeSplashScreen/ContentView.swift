//
//  ContentView.swift
//  CoffeSplashScreen
//
//  Created by Pouya Sadri on 10/04/2024.
//

import SwiftUI

struct ContentView: View {
	@State private var isSplashScreen = true
    var body: some View {
		ZStack{
			Group{
				if isSplashScreen{
					SplashScreen()
				}else{
					
					MainView()
				}
			}
			.onAppear{
				DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
					isSplashScreen = false
				})
			}
		}
    }
}

struct SplashScreen : View {
	var body: some View {
		ZStack{
			Color.white.ignoresSafeArea()
			LottieView(fileName: "coffeesplash")
				.offset(y:-50)
		}
	}
}

struct MainView: View {
	@State private var isChangeOffset = false
	@State private var isChangeOpacity = false
	var body: some View {
		ZStack{
			Color.white
				.ignoresSafeArea()
			
			LoginPart()
			
			ZStack{
				Text("C A F É")
					.font(.system(size: 70))
					.fontWeight(.light)
					.foregroundStyle(Color("coffee"))
					.multilineTextAlignment(.leading)
					.frame(width: 350,height: 200)
					.offset(y:-100)
				
				Rectangle()
					.foregroundStyle(.white)
					.frame(width: 350,height: 200)
					.opacity(isChangeOpacity ? 0 : 1)
					.offset(y:-100)
					.animation(.easeOut(duration: 3), value: isChangeOpacity)
					.onAppear(){
						isChangeOpacity.toggle()
					}
				
				Image("coffeepic")
					.resizable()
					.frame(width: 294,height: 294)
					.offset(x:12.5,y: isChangeOffset ? -240 : 7)
					.animation(.easeInOut(duration: 1), value: isChangeOffset)
					.onAppear(){
						isChangeOffset.toggle()
					}
			}
		}
	}
}

struct LoginPart : View {
	@State private var isChangeOffset = false
	var body: some View {
		ZStack{
			Rectangle()
				.foregroundStyle(Color("coffee"))
			
			RoundedRectangle(cornerRadius: 35)
				.foregroundStyle(.white.opacity(1))
				.offset(y:-800)
			
			ZStack{
				Text("Find The Best Coffee For You.")
					.font(.system(size: 35))
					.fontWeight(.semibold)
					.foregroundStyle(.white)
					.multilineTextAlignment(.leading)
					.frame(width: 350,height: 200)
					.offset(x:-5,y:-290)
				
				Text("Lorem ipsum dolor sit amet, adipiscing elit. Nullam pulvinar dolor sed enim eleifend efficitur.")
					.font(.title2)
					.fontWeight(.regular)
					.foregroundStyle(.white.opacity(0.8))
					.multilineTextAlignment(.leading)
					.frame(width: 350,height: 200)
					.offset(y:-170)
			}
			.padding()
			
			ButtonUI()
		}
		.offset(y:isChangeOffset ? 400 : 700)
		.animation(.easeInOut(duration: 1), value: isChangeOffset)
		.onAppear{
			isChangeOffset.toggle()
		}
	}
}

struct ButtonUI : View {
	var body: some View {
		ZStack{
			Circle()
				.foregroundStyle(.clear)
				.frame(width: 85,height: 85)
				.overlay(content: {
					Circle()
						.stroke(.white,lineWidth: 2)
				})
			
			Image(systemName: "chevron.right")
				.resizable()
				.frame(width: 25,height: 35)
				.foregroundColor(.white)
				.offset(x:3)
		}
		.offset(x:120,y:-50)
	}
}

#Preview {
    ContentView()
}

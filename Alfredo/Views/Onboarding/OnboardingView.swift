//
//  ContentView.swift
//  Alfredo
//
//  Created by Dalvin Segura on 20/5/25.
//

import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var coordinator: NavigationCoordinator
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(.blue)
                .blur(radius: 120)
                .frame(width: 180, height: 180)
                .offset(x:60, y:40)
                .opacity(0.6)
            
            Circle()
                .foregroundStyle(.green)
                .blur(radius: 120)
                .frame(width: 180, height: 180)
                .offset(x:-160, y:280)
                .opacity(0.6)
        }
        
        
        Image("alfredo")
            .resizable()
            .scaledToFit()
            .frame(height: 200)
            .padding(.bottom, 45)
            
        
        VStack(alignment: .leading, spacing: 0){
            
            Text("¡Hola, soy Alfredo!")
                .font(.largeTitle)
                
            Text("Tu bro ")
                .font(.largeTitle)
            + Text("inteligente")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.green)
            
            Text("Estoy para ayudarte a organizar tu agenda y puedar rendir al maximo.")
                .font(.subheadline)
                .frame(maxWidth: 255)
                .padding(.top, 10)
            
            Button(action: {coordinator.push(.login)}){
                Spacer()
                Text("Comenzar")
                    .foregroundStyle(.white)
                    .fontWeight(.light)
                    .font(.title3)
                Spacer()
            }
            .frame(height: 50)
            .background(.green)
            .cornerRadius(10)
            .padding(.top, 50)
            
        }.padding(.horizontal, 20)
    }
}

#Preview {
    OnboardingView().preferredColorScheme(.dark)
}

//
//  ContentView.swift
//  Earthquakes_SwiftUI
//
//  Created by Mariana Valenzuela  on 09-01-24.
//

import SwiftUI

struct WelcomeView: View {
    @State private var presentNextView = false
    var body: some View {
        NavigationStack {
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 330)
                    .padding(.top, 20)
                Spacer()
                Text("Earthquakes")
                    .font(.system(size: 35,weight: .bold))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorPrimary"))
                    .padding(.bottom, 10)
                
                Text("Bienvenidos")
                    .font(.system(size: 20,weight: .regular))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                Spacer()
                
                HStack {
                    Button {
                        presentNextView.toggle()
                    } label: {
                        Text("Iniciar Sesion")
                            .font(.system(size: 20,weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 160,height: 55)
                    .background(Color("ColorPrimary"))
                    .cornerRadius(12)
                    .padding(.top, 20)
                    Spacer()
                    
                    Button {
                        //Action
                    } label: {
                        Text("Registrate")
                            .font(.system(size: 20,weight: .semibold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 160,height: 55)
                    .background(Color("ColorPrimary"))
                    .cornerRadius(12)
                    .padding(.top, 20)
                }
                Spacer()
            }
            .padding()
            .navigationDestination(isPresented: $presentNextView) {
                Text("Next View")
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

//
//  ContentView.swift
//  WaitApp
//
//  Created by Pieter Yoshua Natanael on 05/04/22.
//

import SwiftUI

//
//final class AppState : ObservableObject {
//        @Published var rootViewId = UUID()
//    }
//



struct ContentView: View {
    
    @State var backToRoot = false
    
    var body: some View {
        NavigationView{
            
//                        Text("WaitApp")
//                            .toolbar {
//                                ToolbarItem(placement: .principal)
           
            ZStack {
                Color.primary
                            .ignoresSafeArea()
            
            VStack {
                
               
                
//                    Text ("WaitApp").font(.title2)
//                    .bold()
//                    .offset(y: -70)
                
//                Spacer()
                
                Image("noEmoji")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(40)
                    
                    .frame(width: 400, height: 300)
//                    .background(.cyan)
//                Image(systemName: "alarm")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(Color.white)
//                    .padding(60)
//                    .frame(width: 300, height: 300)
//                    .background(.blue)
//                    .clipShape(Circle())
                
                Text("Welcome to WaitApp")
                    .font(.title3)
                    .fontWeight(.heavy)
                    .bold()
                    .foregroundStyle(.white)
                    
//                    .frame(width: 250, height: 250)
                
                
                
              
                    Text("The 24-hour waiting app to curb your compulsive behaviour ")
                        .multilineTextAlignment(.center)
                        .font(.title3)
                        .foregroundColor(.white)
                        
               
                    
                Spacer()
                
                NavigationLink(destination: ProfileView( backToRoot: $backToRoot), isActive: $backToRoot) {
                    Text("Let the wait begin")
                        .bold()
                        .frame(width: 200, height: 35)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    
                    
                    
                    
                }
                
//                NavigationLink(destination: ProfileView()) {
//                    Text("Start")
//                        .frame(width: 200, height: 35)
//                        .background(.blue)
//                        .foregroundColor(.white)
//                        .cornerRadius(15)
//
//
//
//
//                }
                
                //
                //            Button("Start"){
                //                NavigationLink(destination: OpenCamera()) {
                //
                //                }
                //
                //            }
                //            .frame(width: 200, height: 10)
                //            .foregroundColor(.white)
                //            .padding()
                //            .background(.blue)
                //            .cornerRadius(12)
                //
            }
           
        }
        .navigationBarBackButtonHidden(true)
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

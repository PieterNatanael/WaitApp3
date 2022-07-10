//
//  openCamera.swift
//  WaitApp
//
//  Created by Pieter Yoshua Natanael on 05/04/22.
//


import SwiftUI

struct ProfileView: View {
    
    @State var username: String = ""
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
    @Binding var backToRoot : Bool
    
    var body: some View {
        
        NavigationView {
            
            
            ZStack {
                Color.secondary
                            .ignoresSafeArea()
            
            VStack{
                
               
                
                Text("Let the wait begin")
                    .bold()
                    .multilineTextAlignment(.trailing)
                    .font(.title)
                    .padding(-70)
                    .foregroundColor(.white)
                    
                
                Text("Take picture")
                    .bold()
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                    
                
                
                
//                Color.gray
//                .ignoresSafeArea()
//                Text ("WaitApp").font(.title2)
//                .bold()
//                .offset(y: -70)
                
            
                
//                TextField("Enter your desire...", text: $username)
//                .frame(width: 200, height: 35)
//                    .textFieldStyle(RoundedBorderTextFieldStyle())
//                    .padding()
                
                ZStack(alignment: .bottomTrailing){
                    
                    
               
                    
                    Button(action: {
                        changeProfileImage = true
                        openCameraRoll = true
                            
                        
                    }
                           
                           , label: {
                        if changeProfileImage {
                            Image(uiImage: imageSelected)
                                .profileImageMod()
                        } else {
    //                        Image("profileImage")
                            Image(systemName: "camera.circle.fill")
                                .profileImageMod()
                        }
                    })
                    
                    
                    Image(systemName: "plus")
                        .frame(width: 30, height: 30)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        
                    
                }.sheet(isPresented: $openCameraRoll) {
                    ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
                }
                //disini
                .padding(-5)
                Text("Write it down")
                    .bold()
                    .padding()
                    .foregroundColor(.white)
                
                TextField("What is it?", text: $username)
                    
                .frame(width: 200, height: 35)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(-15)
//                Text("")
//                        .font(.title)
//                        .bold()
//                    TextField("Enter your desire...", text: $username)
//                    .frame(width: 200, height: 35)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
                
                    
                Spacer()
                VStack{
//                Image("whatIsIT")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .padding(10)
//
//                        .frame(width: 350, height: 150)
//                        .background(.blue)
                    
                    
//                    .padding()
                    
                
                NavigationLink(destination: TimerStart(username: username, imageSelected: imageSelected, backToRoot: $backToRoot)) {
                    Text("Waiting button")
                        .bold()
                        .frame(width: 200, height: 35)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .padding()
                }
//                        .padding()
                    
                    
                    
                    
                    
                    NavigationLink(destination: TimerStart2(username: username, imageSelected: imageSelected, backToRoot: $backToRoot)) {
                        Text("Trial button")
                            .bold()
                            .frame(width: 200, height: 35)
                            .background(.white)
                            .foregroundColor(.black)
                            .cornerRadius(15)
                        
                }
//                    Spacer()
                } 

            }
        }
        
    }
}
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView( backToRoot: .constant(true))
    }
}
//import SwiftUI
//
//struct OpenCamera: View {
//    var body: some View {
//        VStack {
//            Image("SaleItem")
//                .resizable()
//                .frame(width: 350, height: 600)
//                .padding()
//
//
//
//
//            Spacer()
//            NavigationLink(destination: InputName()) {
//                Text("")
//                    .frame(width: 60, height: 60)
//                    .background(.black)
//                    .foregroundColor(.white)
//                    .cornerRadius(15)
//                    .clipShape(Circle())
//            }
//        }
//    }
//
//    struct OpenCamera_Previews: PreviewProvider {
//        static var previews: some View {
//            OpenCamera()
//        }
//    }
//}

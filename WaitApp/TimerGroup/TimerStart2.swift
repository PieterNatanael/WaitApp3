//
//  TimerStart2.swift
//  WaitApp
//
//  Created by Pieter Yoshua Natanael on 14/04/22.
//

//
//  TimerStart.swift
//  WaitApp
//
//  Created by Pieter Yoshua Natanael on 05/04/22.
//

import SwiftUI


//struct ThirdView: View {
//    @Binding var isActive: Bool
//
//    var body: some View {
//        Button("Unwind!"){
//            isActive = false
//        }
//        .navigationTitle("Last View!")
//    }
//}

struct TimerStart2: View {
    
    
    
    var username: String
    var imageSelected = UIImage()
    //MARK: - PROPERTIES
    
    @State var alertCantWait: Bool = false
    @State var timeRemaining = 30 //24*60*60
    @State var isDone : Bool = false
    @Binding var backToRoot : Bool
    @State var confetti : Bool = false
    @State private var didTap:Bool = false
    @State var confetti2 : Bool = false
    
    let timer2 = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    
    
    //MARK: - BODY  24*60*60
    
    var body: some View {
        
        
        
        ZStack {
            Color.primary
                .ignoresSafeArea()
            
//            if confetti {
//                LottieView(name: "confetti", loopMode: .loop)
//                    .frame(width: 250, height: 250)
//            }
            
            VStack {
                //            Text ("WaitApp").font(.title2)
                //            .bold()
                //            .offset(y: -70)
                
                
                VStack {
                    
                    
                    VStack {
                        
                        
                        
                        
                        
                        
                        Image(uiImage: imageSelected)
                        //                        .resizable()
                        //                        .scaledToFill()
                        //                        .frame(width: 300, height: 200)
                        
                        
                            .profileImageMod()
                        
                        Text(username)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .foregroundColor(.white)
                        
                        //                                        .fontWeight(.semibold)
                        //                                        .padding(.vertical, 20.0)
                        //                                        .frame(alignment:.center)
                        
                        
                        //                        .font(.callout)
                        //                        .bold()
                        
                        
                       
                        
                        
                        VStack {
                            Text("\(timeString(time2: timeRemaining))")
                            
                                .font(.system(size: 60))
                            
                                .frame(height: 80.0)
                            
                                .frame(minWidth: 0, maxWidth: .infinity)
                            
                                .foregroundColor(.black)
                            
                                .background(Color.white)
                            
                            
                                .onReceive(timer2){ _ in
                                    
                                    if self.timeRemaining > 0 {
                                        
                                        self.timeRemaining -= 1
                                        
                                    }else{
                                        
                                        self.timer2.upstream.connect().cancel()
                                        isDone = true
                                    }
                                    
                                    
                                }
                            //                        Spacer()
                            if isDone {
                                
                                Text("You did it! whats your decision?")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                
                                
                                VStack {
                                    //                            ZStack(alignment:.bottom){
                                    Image("happyEmoji")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                    //                                    .padding(10)
                                    
                                        .frame(width: 300, height: 150)
                                    //                                    .background(.blue)
                                    //                                    .padding()
                                    //                                .resizable()
                                    //                                .frame(width: 200, height: 200)
                                    //                                .padding()
                                    
                                    
//                                    Text("Finish")
//                                        .bold()
//                                        .frame(width: 200, height: 35)
//                                        .background(.white)
//                                        .foregroundColor(.black)
//                                        .cornerRadius(15)
//                                        .onTapGesture {
//                                            backToRoot = false
//                                        }
                                    //                                .padding(80)
                                    
                                }
                                //                            padding(20)
                                //                            .padding()
                                //                            .padding()
                                //                            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                                
                            } else {
                                
                                
                                Text("Waiting time! you need to be patience")
                                    .font(.title3)
                                    .bold()
                                    .foregroundStyle(.white)
                                
                                //                            Text("Decision time")
                                //                                .font(title)
                                //
                                VStack{
                                    
                                    Image("noEmoji")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .padding(10)
                                    
                                        .frame(width: 300, height: 200)
                                    //                                    .background(.blue)
//                                        .padding(30)
                                    
                               
                                    
                                    
                                    
                                    
                                    
                                    //                                    .padding(70)
                                    //                                .resizable()
                                    //                                .frame(width: 200, height: 200)
                                    //                                .padding()
                                    
//                                    Text("Waiting time")
//                                        .bold()
//                                        .frame(width: 200, height: 35)
//                                        .font(.title2)
//                                        .background(.teal)
//                                        .foregroundColor(.black)
//                                        .cornerRadius(15)
//                                        .padding(5)
//                                        .overlay(
//                                                RoundedRectangle(cornerRadius: 40)
//                                                    .stroke(Color.white, lineWidth: 5)
//                                            )
                                    
                                    
////
//                                    HStack {
//                                        Text("Keep waiting")
//                                            .bold()
//                                            .frame(width: 130, height: 35)
//                                            .background(.blue)
//                                            .foregroundColor(.white)
//                                            .cornerRadius(15)
//                                            .padding(30)
//                                            .onTapGesture {
//                                                confetti.toggle()
//                                            }
//
//
//
//
//
//
//                                        //
//                                        //                                    LottieView(name: "confetti", loopMode: .loop)
//                                        //                                        .frame(width: 250, height: 250)
//                                        //
//                                        //                                    if stillWaiting
////
                                        Text("Can't wait")
                                            .bold()
                                            .frame(width: 130, height: 35)
                                            .background(.red)
                                            .foregroundColor(.white)
                                            .cornerRadius(15)
                                            .padding()
                                            .onTapGesture {
                                                backToRoot = false
                                            }

//
//                                            .onTapGesture {
//                                                confetti2.toggle()
//                                            }


//
//
//
//                                        //                                .onTapGesture {
//
//
//
//
//
//                                    }
//
                                      
                                    
                                        
                                        
                                    
                                }
                                    
                                    
                                   
                                    //
                                                                        
//                                                                            if confetti {
//                                                                                LottieView(name: "confetti")
//                                                                                    .frame(width: 250, height: 250)
//                                                                            }
//
//
//
//                                    if confetti2 {
//                                        LottieView2(name: "confetti2")
//                                            .frame(width: 250, height: 250)
//                                    }
//
//
//
                                    
                                    
                                    
                                
                            }
                            
                            
                              
                           
                            
                            //                            .padding()
                            //                            .padding()
                        }
                        
                       
                           
                            
                        
                        
                    }
                    
                 
                    
                        
                             
                        
                        
                    
                }
                
                
                    
                         
                    
                    
                    
            }
            
           
           
            
            
        }
        
        
        
        .navigationBarBackButtonHidden(true)
    }
    
    

    
    
    
    
}





//Convert the time into 24hr (24:00:00) format

func timeString(time2: Int) -> String {
    
    //        let hours   = Int(time) / 3600
    //
    //        let minutes = Int(time) / 60 % 60
    
    let hours   = Int(time2) / 3600
    
    let minutes = Int(time2) / 60 % 60
    
    let seconds = Int(time2) % 60
    
    return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    
}





struct TimerStart2_Previews: PreviewProvider {
    static var previews: some View {
        TimerStart2(username: "nama", backToRoot: .constant(true))
    }
}

    


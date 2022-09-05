//
//  LoginView.swift
//  SwiftUIApp
//
//  Created by Muhammed Safaroff on 06.09.22.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSecured:Bool = true
    @FocusState private var focusEmail:Bool
    @FocusState private var focusPassword:Bool
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom){
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                
                ZStack{
                    BlurView(style: .systemChromeMaterialDark)
                        .overlay(RoundedRectangle(cornerRadius:30)
                            .stroke(.white.opacity(0.4),lineWidth: 1))
                    
                    VStack(alignment: .leading){
                        Text("Login")
                            .font(.system(size: 32, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.all,30)
                            .padding(.bottom,-10)
                        Text("Email")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.leading,30)
                            .padding(.bottom,10)
                        ZStack(alignment: .center){
                            
                            TextField("",text: $email)
                                .focused($focusEmail)
                                .textContentType(.emailAddress)
                                .padding(.horizontal,16)
                                .frame(width: .infinity, height: 50)
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                                .accentColor(.white)
                                .foregroundStyle(LinearGradient(colors: [.white.opacity(0.4),.white.opacity(0.2)], startPoint: .leading, endPoint: .trailing))
                                .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 40, style: .continuous))
                                .overlay(RoundedRectangle(cornerRadius:30)
                                    .stroke(.white.opacity(0.6),lineWidth: 1))
                            HStack{
                                if email.isEmpty{
                                    Button{
                                        focusEmail=true
                                        focusPassword=false
                                    } label: {
                                        Text("Your email")
                                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                                Spacer()
                                Button{
                                    email.removeAll()
                                } label: {
                                    Image(systemName: "xmark.circle")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .foregroundColor(.white)
                                        .frame(width: 22, height: 22)
                                }
                                
                            }.padding(.trailing,11)
                                .padding(.leading,16)
                            
                            
                            
                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 20, trailing: 30))
                        
                        Text("Password")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.leading,30)
                            .padding(.bottom,10)
                        ZStack(alignment: .trailing){
                            if isSecured {
                                SecureField("",text: $password)
                                    .focused($focusPassword)
                                    .padding(.horizontal,16)
                                    .foregroundColor(.white)
                                    .frame(width: .infinity, height: 50)
                                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                                    .accentColor(.white)
                                    .foregroundStyle(LinearGradient(colors: [.white.opacity(0.4),.white.opacity(0.2)], startPoint: .leading, endPoint: .trailing))
                                    .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 40, style: .continuous))
                                    .overlay(RoundedRectangle(cornerRadius:30)
                                        .stroke(.white.opacity(0.6),lineWidth: 1))
                                HStack{
                                    if password.isEmpty{
                                        Button{
                                            focusEmail=false
                                            focusPassword=true
                                        } label: {
                                            Text("Your password")
                                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                                .foregroundColor(.white)
                                        }
                                        
                                    }
                                    Spacer()
                                    Button{
                                        isSecured.toggle()
                                    } label: {
                                        Image(systemName: "eye.slash")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.white)
                                            .frame(width: 24)
                                    }
                                    
                                }.padding(.trailing,13)
                                    .padding(.leading,16)
                                
                                
                            }else{
                                TextField("Your password",text: $password)
                                    .focused($focusPassword)
                                    .padding(.horizontal,16)
                                    .foregroundColor(.white)
                                    .frame(width: .infinity, height: 50)
                                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                                    .accentColor(.white)
                                    .foregroundStyle(LinearGradient(colors: [.white.opacity(0.4),.white.opacity(0.2)], startPoint: .leading, endPoint: .trailing))
                                    .background(.ultraThinMaterial,in: RoundedRectangle(cornerRadius: 40, style: .continuous))
                                    .overlay(RoundedRectangle(cornerRadius:30)
                                        .stroke(.white.opacity(0.6),lineWidth: 1))
                                
                                
                                HStack{
                                    if password.isEmpty{
                                        Button{
                                            focusEmail=false
                                            focusPassword=true
                                        } label: {
                                            Text("Your password")
                                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                                .foregroundColor(.white)
                                        }
                                        
                                    }
                                    Spacer()
                                    Button{
                                        isSecured.toggle()
                                    } label: {
                                        Image(systemName: "eye")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .foregroundColor(.white)
                                            .frame(width: 24)
                                    }
                                    
                                }.padding(.trailing,13)
                                    .padding(.leading,16)
                            }
                            
                            
                            
                            
                        }.padding(EdgeInsets(top: 0, leading: 30, bottom: 10, trailing: 30))
                        HStack {
                            Spacer()
                            Button{
                                
                            } label: {
                                Text("Forgot Password?")
                                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.horizontal,30)
                        .padding(.bottom,30)
                        CustomAButton(title: "Login", onTap: {})
                        HStack(alignment: .center) {
                            Spacer()
                            Text("Don’t have an account? ")
                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                            
                            NavigationLink {
                                SignUpView()
                                
                                
                            } label: {
                                Text("Sign up")
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                    .foregroundColor(Color("button"))
                            }
                            
                            
                            Spacer()
                        }
                        .padding(.horizontal,30)
                        .padding(.bottom,30)
                        
                        HStack(alignment: .center) {
                            Spacer()
                            Divider()
                                .frame(width: UIScreen.main.bounds.width/2-55, height: 1)
                                .overlay(.white)
                            Text("or")
                                .font(.system(size: 16, weight: .medium, design: .rounded))
                                .foregroundColor(.gray)
                            
                            Divider()
                                .frame(width:UIScreen.main.bounds.width/2-55, height: 1)
                                .overlay(.white)
                            Spacer()
                            
                            
                        }
                        .padding(.horizontal,30)
                        .padding(.bottom,30)
                        HStack(alignment: .center,spacing: 40) {
                            Spacer()
                            SosialButton(image:"google",onTap: {})
                            SosialButton(image:"facebook",onTap: {})
                            SosialButton(image:"apple",onTap: {})
                            Spacer()
                        }
                        .padding(.horizontal,30)
                        .padding(.bottom,30)
                        
                        
                    }
                    
                    
                    
                }
                .fixedSize()
                .cornerRadius(30)
                
            }
            .navigationBarHidden(true)
            
            
        }
        .accentColor(.white)
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

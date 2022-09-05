//
//  SignUpView.swift
//  SwiftUIApp
//
//  Created by Muhammed Safaroff on 06.09.22.
//

import SwiftUI

struct SignUpView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var isSecured:Bool = true
    @FocusState private var focusName:Bool
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
                        Text("Sign up")
                            .font(.system(size: 32, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.all,30)
                            .padding(.bottom,-10)
                        Text("Full name")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.leading,30)
                            .padding(.bottom,10)
                        ZStack(alignment: .center){
                            
                            TextField("",text: $name)
                                .focused($focusName)
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
                                if name.isEmpty{
                                    Button{
                                        focusName=true
                                        focusEmail=false
                                        focusPassword=false
                                    } label: {
                                        Text("Your name")
                                            .font(.system(size: 16, weight: .semibold, design: .rounded))
                                            .foregroundColor(.white)
                                    }
                                    
                                }
                                Spacer()
                                Button{
                                    name.removeAll()
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
                                        focusName=false
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
                                            focusName=false
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
                                            focusName=false
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
                        
                        
                        HStack(alignment: .center) {
                            Text("By signing up, you’re agree to our Terms & Conditions and Privacy Policy"){ string in
                                if let range = string.range(of: "Terms & Conditions") {
                                    
                                    string[range].foregroundColor = Color("button")
                                    string[range].font = Font.system(size: 12, weight: .bold)
                                    if let range = string.range(of: "Privacy Policy"){
                                        string[range].foregroundColor = Color("button")
                                        string[range].font = Font.system(size: 12, weight: .bold)
                                    }
                                }
                                
                            }
                            .font(.system(size: 11.5, design: .rounded))
                            .foregroundColor(.white)
                            .lineSpacing(6)
                            
                        }
                        .frame(width:UIScreen.main.bounds.width-60)
                        .padding(.horizontal,30)
                        .padding(.bottom,30)
                        CustomAButton(title: "Continue", onTap: {})
                            .padding(.bottom,30)
                        
                    }
                }
                .fixedSize()
                .cornerRadius(30)
            }
            .edgesIgnoringSafeArea(.top)
            
            
        }
    }
    
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

extension Text {
    init(_ string: String, configure: ((inout AttributedString) -> Void)) {
        var attributedString = AttributedString(string) /// create an `AttributedString`
        configure(&attributedString) /// configure using the closure
        self.init(attributedString) /// initialize a `Text`
    }
}

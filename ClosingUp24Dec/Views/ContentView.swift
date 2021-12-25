import SwiftUI



struct ContentView: View {
    
    @State private var isLoading = false
    
    
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                
                
                PlayerView()
                
                
                    .edgesIgnoringSafeArea(.all)
                    .overlay(
                        
                        HStack {
                            
                            
                            VStack {
                                Spacer()
                               
                                NavigationLink(destination: RealEstateOne()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                    
                                        .overlay(HStack {
                                            Image(systemName: "checkmark.square")
                                                .foregroundColor(.black)
                                            Text("Real Estate Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                            
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                                
                                        })
                                    
                                    
                                    
                                }
//                                Spacer()
                                
                                
                                NavigationLink(destination: LoanDocs()) {
                                    RoundedRectangle(cornerRadius: 25)
                                        
                                        .fill(Color("rahRed"))
                                        .padding(.horizontal)
                                        .frame(width: 280, height: 70)
                                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                                        .overlay(HStack {
                                            Image(systemName: "square")
                                                .foregroundColor(.black)
                                                
                                            Text("Mortgage Documents")
                                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                            
                                                .foregroundColor(.black)
                                                .navigationBarTitle("")
                                                .navigationBarHidden(true)
                                                
                                        })
                                    
                                    
                                    
                                }
                                Spacer()
                                Spacer()
                                Spacer()
                                
                                Image("logobozo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 300)
                                    .padding(.all)
                                    .opacity(0.8)
                                
                                
                            }
                            Spacer()
                            
                            
                            
                            
                        })
                
                
                
                
                
                //                            Text("Real Estate Documents")
                //                                .navigationBarTitle("")
                //                                .navigationBarHidden(true)
                //                                .padding(.all)
                
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}











//
//                    Button(action: {
//
//                    }, label: {
//                        Text("Lender Documents").font(.headline).fontWeight(.heavy).foregroundColor(Color.black).padding().frame(width: 200.0, height: 100.0).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/).cornerRadius(10)
//                    })
//                        .padding()
//                        .background(LinearGradient(gradient: Gradient(colors: [.green, .red]), startPoint: .leading, endPoint: .trailing))
//                        .foregroundColor(.red).cornerRadius(10)
//



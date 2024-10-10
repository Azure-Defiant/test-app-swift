import SwiftUI

struct SignUpView: View {
    @StateObject private var viewModel = AuthViewModel() // Initialize the view model
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    
                
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -300)
                    
                    Text("Sign Up")
                        .font(.custom("Poppins-Regular", size: 20))
                        .padding(.top, -130)
                    
                    TextField("Email", text: $viewModel.signInEmail) // Bind the email input to viewModel
                        .foregroundColor(Color.black)
               
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.top, -50)
                    
                    SecureField("Password", text: $viewModel.signInPassword) // Bind the password input to viewModel
                        .foregroundColor(Color.black)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.1))
                        .cornerRadius(20)
                        .padding(.top, 1)
                    
                    Button(action: {
                        Task {
                            
                        }
                    }) {
                        Text("Sign Up")
                            .font(.custom("Poppins-Bold", size: 16))
         
                            
                            .foregroundColor(Color.white)
                            .frame(width: 150, height: 55)
                            .background(Color.black.opacity(0.8))
                            .cornerRadius(20)
                    }
                    
                    // Display sign-up error if any
                    if let error = viewModel.error {
                        Text(error)
                            .foregroundColor(.red)
                            .padding()
                    }
                }
            }
            .navigationBarHidden(true)
        }
        .environmentObject(viewModel)
    }
}

#Preview {
    SignUpView()
}



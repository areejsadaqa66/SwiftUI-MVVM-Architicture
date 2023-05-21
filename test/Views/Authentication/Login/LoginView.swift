import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    
    @ObservedObject private var loginViewModel: LoginViewModel
    private let authenticatedActionHandler = AuthenticatedActionHandler()

    init(loginViewModel: LoginViewModel) {
        self.loginViewModel = loginViewModel
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                BackgroundView()
                
                VStack(spacing: 20) {
                    UsernameTextField(username: $username)
                    
                    PasswordTextField(password: $password)
                    
                    LoginButton {
                        // Perform login action
                        loginViewModel.login(username: username, password: password)
                    }
                    .padding()
                   
                    if loginViewModel.isAuthenticated ?? false {

                        Text("Authenticated")
                            .onAppear {
                                authenticatedActionHandler.performActions()
                            }
                            
                    } else {
                        Text("")
                    }
                    
                    if let token = loginViewModel.token {
                        Text("Token: \(token)")
                    }
                    
                    ForgotPasswordButton {
                        // Handle forgot password action
                    }
                }
                
                .padding(.vertical)
                .navigationStyle(with: "Login Page")
                
            }
        }
    }
}



struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(loginViewModel: LoginViewModel())
    }
}


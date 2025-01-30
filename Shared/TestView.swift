import SwiftUI

struct LoginView: View {
    @State private var username = ""  // To store the username input
    @State private var password = ""  // To store the password input
    @State private var isLoggedIn = false  // To track if the user is logged in
    @State private var loginError = ""  // To display any login errors
    
    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding()

            // Username input
            TextField("Username", text: $username)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .autocapitalization(.none) // To prevent auto-capitalizing the username
            
            // Password input
            SecureField("Password", text: $password)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // Display login error if any
            if !loginError.isEmpty {
                Text(loginError)
                    .foregroundColor(.red)
                    .padding()
            }
            
            // Login Button
            Button(action: {
                login()  // Trigger the login function when the button is pressed
            }) {
                Text("Log In")
                    .font(.title2)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding(.top, 20)
            
            Spacer()
        }
        .padding()
    }
    
    // Simulate login
    func login() {
        // Clear previous error messages
        loginError = ""
        
        // Check if username and password are valid (for example purposes)
        if username.isEmpty || password.isEmpty {
            loginError = "Please fill in both fields."
            return
        }
        
        // Simulate successful login (you can replace this with an actual API call)
        if username == "testUser" && password == "password123" {
            isLoggedIn = true
            print("Login successful!")
        } else {
            loginError = "Invalid username or password."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//
//  UserViewModel.swift
//  Proctorly
//
//  Created by Sherwin Josh A. Aquino on 10/2/24.
//

import Foundation
import Supabase


final class AuthViewModel: ObservableObject {
    @Published var signinUsername: String = ""
    @Published var signInEmail: String = ""
    @Published var signInPassword: String = ""
    @Published var error: String? = nil
    @Published var isLoggedIn = false
    @Published var userRole: String? = nil // Store user role
    
    final class AuthViewModel: ObservableObject {
        @Published var signInEmail: String = ""
        @Published var signInPassword: String = ""
        @Published var error: String? = nil
        @Published var isLoggedIn = false
        @Published var userRole: String? = nil // Store user role
        
        let supabase = SupabaseClient(supabaseURL: URL(string: "https://eylzbrmtbjwhkmhjgggr.supabase.co")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV5bHpicm10Ymp3aGttaGpnZ2dyIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY4NDQ3ODQsImV4cCI6MjA0MjQyMDc4NH0.lMlARKfwI8RoLcGgJ5CEJmymZOT2_w-FgP89IqLlIe4")
        
        //signIn/logIn
        
        

    }
}

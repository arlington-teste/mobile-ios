import Foundation

class User {
    var id: Int
    var password: String

    init(id: Int, password: String) {
        self.id = id
        self.password = password
    }
}

func authenticateUser(inputId: Int, inputPassword: String) -> Bool {
    let user = User(id: inputId, password: inputPassword)

    // Simulação de autenticação
    if user.id == 1 && user.password == "password" {
        return true
    } else {
        return false
    }
}

let id = Int(readLine() ?? "") ?? 0
let password = readLine() ?? ""

if authenticateUser(inputId: id, inputPassword: password) {
    print("Authenticated successfully.")
} else {
    print("Authentication failed.")
}

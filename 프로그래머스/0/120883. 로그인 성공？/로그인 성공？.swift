import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    let id = id_pw[0]
    let pw = id_pw[1]
    for i in db {
        if i[0] == id {
            return i[1] == pw ? "login" : "wrong pw"
        }
    }
    return "fail"
}
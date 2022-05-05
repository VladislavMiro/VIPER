import Foundation

protocol NetworkServiceProtocol: class {
    func getUsers(url: URL, completion: @escaping (NetworkResult) -> Void)
}

import Foundation

protocol MainViewInteractorProtocol: class {
    var users: [UserProtocol] { get }
    func fetchData()
}

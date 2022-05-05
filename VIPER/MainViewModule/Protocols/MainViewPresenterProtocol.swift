import Foundation

protocol MainViewPresenterProtocol: class {    
    func loadUsers()
    func getUsers() -> [UserProtocol]
    func getUser(at: Int) -> UserProtocol
    func openDetailView(at cellIndex: Int)
    func updateTable()
    func showError(error: Error)
}

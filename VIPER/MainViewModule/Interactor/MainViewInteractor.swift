import Foundation

final class MainViewInteractor {
    
    public weak var presenter: MainViewPresenterProtocol?
    private(set) var users: [UserProtocol] = [UserProtocol]()
    
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
    
}

extension MainViewInteractor: MainViewInteractorProtocol {
    
    public func fetchData() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        
        networkService.getUsers(url: url) { [unowned self] networkResult in
            switch(networkResult) {
            case .falure(let error):
                self.presenter?.showError(error: error)
            case .sucsess(let data):
                self.users.append(contentsOf: data)
                self.presenter?.updateTable()
            }
        }
    }
    
}

import Foundation

final class MainViewPresenter {
    
    private weak var view: MainViewProtocol!
    private var interactor: MainViewInteractorProtocol!

    private var router: RouterProtocol
    
    init(view: MainViewProtocol, interactor: MainViewInteractorProtocol, router: RouterProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
}

extension MainViewPresenter: MainViewPresenterProtocol {
    
    public func loadUsers() {
        interactor.fetchData()
    }
    
    public func getUser(at index: Int) -> UserProtocol {
        return interactor.users[index]
    }
    
    public func getUsers() -> [UserProtocol] {
        return interactor.users
    }
    
    public func openDetailView(at cellIndex: Int) {
        router.showDetailView(user: interactor.users[cellIndex])
    }
    
    public func updateTable() {
        view.updateTable()
    }
    
    public func showError(error: Error) {
        view.showAlert(title: "Network Error", message: error.localizedDescription, completion: nil)
    }
    
}

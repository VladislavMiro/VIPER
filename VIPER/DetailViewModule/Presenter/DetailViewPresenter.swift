import Foundation

final class DetailViewPresenter {
    
    private var interactor: DetailViewInteractorProtocol!
    private weak var view: DetailViewProtocol?
    private var router: RouterProtocol!
    
    init(view: DetailViewProtocol, router: RouterProtocol, interactor: DetailViewInteractorProtocol) {
        self.view = view
        self.router = router
    }
    
}

extension DetailViewPresenter: DetailViewPresenterProtocol {
        
    public func presentUser() {
        if let user = interactor?.user {
            view?.setData(user: user)
        }
    }
    
}

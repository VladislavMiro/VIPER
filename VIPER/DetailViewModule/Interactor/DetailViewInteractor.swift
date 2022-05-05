import Foundation

final class DetailViewInteractor {
    
    private(set) var user: UserProtocol
    public var presenter: DetailViewPresenterProtocol?
    
    init(user: UserProtocol) {
        self.user = user
    }
    
}

extension DetailViewInteractor: DetailViewInteractorProtocol {
    
}

import Foundation
import UIKit

final class AssemblyBuilder: AssemblyBuilderProtocol {
    
    public func createMainView(router: RouterProtocol) -> UIViewController {
        let storyboard = UIStoryboard(name: "MainView", bundle: nil)
        guard let view = storyboard.instantiateViewController(identifier: "MainView") as? MainViewController else {
            fatalError()
        }
        let network = NetworkService()
        let interactor = MainViewInteractor(networkService: network)
        let presenter = MainViewPresenter(view: view, interactor: interactor, router: router)
        
        interactor.presenter = presenter
        
        view.presenter = presenter
        
        return view
    }
    
    public func createDetailView(user: UserProtocol, router: RouterProtocol) -> UIViewController? {
        let storyboard = UIStoryboard(name: "DetailView", bundle: nil)
        guard let view = storyboard.instantiateViewController(identifier: "DetailView") as? DetailViewController else {
            return nil
        }
        let interactor = DetailViewInteractor(user: user)
        let presenter = DetailViewPresenter(view: view, router: router, interactor: interactor)

        interactor.presenter = presenter
        view.presenter = presenter
        
        return view
    }
    
}

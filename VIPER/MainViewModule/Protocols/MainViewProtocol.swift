import Foundation
import UIKit

protocol MainViewProtocol: class {
    func updateTable()
    func showAlert(title: String, message: String, completion: ((UIAlertAction) -> Void)?)
}

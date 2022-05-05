import UIKit

final class DetailViewController: UITableViewController {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var userNameLabel: UILabel!
    //contact info
    @IBOutlet private weak var emailLabel: UILabel!
    @IBOutlet private weak var phoneLabel: UILabel!
    @IBOutlet private weak var webSiteLabel: UILabel!
    //address
    @IBOutlet private weak var addressStreetLabel: UILabel!
    @IBOutlet private weak var addressSuiteLabel: UILabel!
    @IBOutlet private weak var addressCityLabel: UILabel!
    @IBOutlet private weak var addressZipCodeLabel: UILabel!
    //company
    @IBOutlet private weak var companyNameLabel: UILabel!
    @IBOutlet private weak var companyCatchPhraseLabel: UILabel!
    @IBOutlet private weak var companyBSLabel: UILabel!
    
    public var presenter: DetailViewPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter.presentUser()
    }

}

extension DetailViewController: DetailViewProtocol {
   
    public func setData(user: UserProtocol) {
        nameLabel.text! += user.name
        userNameLabel.text! += user.username
        
        emailLabel.text! += user.email
        phoneLabel.text! += user.phone
        
        addressStreetLabel.text! += user.address.street
        addressSuiteLabel.text! += user.address.suite
        addressCityLabel.text! += user.address.city
        addressZipCodeLabel.text! += user.address.zipcode
        
        companyNameLabel.text! += user.company.name
        companyCatchPhraseLabel.text! += user.company.catchPhrase
        companyBSLabel.text! += user.company.bs
    }
    
}

import Foundation

final class NetworkService: NetworkServiceProtocol {
    
    public func getUsers(url: URL, completion: @escaping (NetworkResult) -> Void) {
        let session = URLSession.shared

        session.dataTask(with: url) { (data, respone, error) in
            var networkResult: NetworkResult
            if error == nil {
                guard let data = data else { return }
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let users = try JSONDecoder().decode([User].self, from: data)
                    networkResult = .sucsess(users)
                } catch {
                    networkResult = .falure(error)
                }
            } else {
                networkResult = .falure(error!)
            }
            
            DispatchQueue.main.async {
                completion(networkResult)
            }
        }.resume()
    }
}

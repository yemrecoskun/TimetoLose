//
//  ApiManager.swift
//  TimetoLose
//
//  Created by Yunus Emre Coşkun on 27.11.2022.
//
import Foundation

public class ApiManager {
    static let shared = { ApiManager() }()
    private let url = Service.baseURL
    private var queryItems =  [URLQueryItem(name: "apikey", value: "")]
    
    func fetch <T: Encodable,U: Decodable,V: Encodable> (api: String? = nil, queryItems: V? = nil, requestModel: T? = nil, completion: @escaping (NetworkModel<U>) -> ()){
        if URL(string: ApiManager.shared.url + (api ?? "")) != nil {
            if var urls = URLComponents(string: ApiManager.shared.url) {
                if let jsonQueryItems = try? JSONSerialization.jsonObject(with: JSONEncoder().encode(queryItems)) as? [String: Any] ?? [:] {
                    urls.queryItems = ApiManager.shared.queryItems + jsonQueryItems.map({URLQueryItem(name: $0.key, value: $0.value as? String)})
                }
                var request = URLRequest(url: urls.url!)
                if let requestModel = requestModel {
                    request.httpMethod = "POST"
                    do {
                        request.httpBody = try JSONEncoder().encode(requestModel)
                        
                    } catch {
                        print("WEB SERVICE ERROR LOG: Don't Json Encoder requestModel")
                        completion(NetworkModel(isStatus: .fail))
                    }
                }
                URLSession.shared.dataTask(with: request) { (data, response, error) in
                    if error != nil {
                        completion(NetworkModel(isStatus: .fail))
                    } else if let data = data {
                        let model = try? JSONDecoder().decode(U.self, from: data)
                        if let model = model{
                            completion(NetworkModel(isStatus: .success, response: model))
                            return
                        }
                    }
                    completion(NetworkModel(isStatus: .fail))
                }.resume()
            }
        }
    }
}

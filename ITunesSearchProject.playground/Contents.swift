import UIKit

extension Data {
    func printed() {
        guard
            let object = try? JSONSerialization.jsonObject(with: self, options: []),
            let data = try? JSONSerialization.data(withJSONObject: object, options: [.prettyPrinted]),
            let string = String(data: data, encoding: .utf8) else {
                print("Failed to read")
                return
        }
        print(string)
    }
}

var components = URLComponents(string: "https://itunes.apple.com/search")!
components.queryItems = [
    "term": "Apple",
    "media": "ebook",
    "attribute": "authorTerm",
    "lang": "en_us",
    "limit": "10"
].map { URLQueryItem(name: $0.key, value: $0.value) }

Task {
    let (data, response) = try await URLSession.shared.data(from: components.url!)
    
    if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
        data.printed()
    }
}


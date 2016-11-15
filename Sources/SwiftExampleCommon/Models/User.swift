import Foundation
import SwiftyJSON

public class User: NSObject, NSCoding {
    
    public var name: String?
    public var email: String?
    public var password: String?
    public var id: String?
    
    public override init() {
        self.name = nil
        self.email = nil
        self.password = nil
        self.id = nil
    }
    
    public init?(jsonData: JSON) {
        guard let name = jsonData["name"].string,
            let email = jsonData["email"].string,
            let id = jsonData["id"].string else {
            return nil
        }
        self.name = name
        self.email = email
        self.id = id
        self.password = jsonData["password"].string
    }
    
    public required convenience init(coder decoder: NSCoder) {
        self.init()
        name = decoder.decodeObject(forKey: "name") as? String
        email = decoder.decodeObject(forKey: "email") as? String
        password = decoder.decodeObject(forKey: "password") as? String
        id = decoder.decodeObject(forKey: "id") as? String
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(email, forKey: "email")
        aCoder.encode(password, forKey: "password")
        aCoder.encode(id, forKey: "id")
    }
}

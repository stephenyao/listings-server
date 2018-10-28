import Vapor

struct Listing: Content {

	let title: String

	let price: String

  let agencyName: String
  
  let imageURL: URL
    
  static func all() -> [Listing] {
    let listing = Listing(title: "511 Church Street", price: "$20", agencyName: "Ray White", imageURL: URL(string: "https://i2.au.reastatic.net/c8975b410f321eb57d7efb199f22bddeba7a0bc89529213f3403de2753a59fea/image2.jpg")!)
    
      return [listing]
  }

}

import Vapor

struct ListingSummary: Content {

	let title: String

	let price: String

	let imageURL: URL
    
    static func all() -> [ListingSummary] {
        let listing = ListingSummary(title: "511 Church Street", price: "$20", imageURL: URL(string: "https://i2.au.reastatic.net/c8975b410f321eb57d7efb199f22bddeba7a0bc89529213f3403de2753a59fea/image2.jpg")!)
        
        return [listing]
    }

}

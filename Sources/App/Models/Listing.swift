import Vapor

struct Listing: Content {

	let title: String

	let price: String

  let agencyName: String
  
  let imageURL: URL
    
  static func all() -> [Listing] {
    return
      zip(richmondAddresses, richmondImages)
        .map { Listing(title: $0, price: "$600k - 750k", agencyName: "Ray White", imageURL: $1) }
  }
}

private let richmondAddresses = [
  "511 Church Street, Richmond, 3121",
  "207/381 Punt Road, Richmond, 3121",
  "12 Huckerby Street, Richmond, 3121",
  "11/16 Derby Street, Richmond, 3121",
  "70 Elizabeth Street, Richmond, 3121",
  "203/18 Hull Street, Richmond, 3121",
  "14/372 Church Street, Richmond, 3121",
  "11/199a Lennox Street, Richmond, 3121",
  "30A Rotherwood Street, Richmond, 3121",
  "104 Buckingham Street, Richmond, 3121",
]

private let richmondImages = [
  URL(string: "https://i2.au.reastatic.net/1125x844/41438ddb47a4d814d4d3baa900b931ad7c531894b8c29a75076cf849f9480a55/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/a802a58b1922af14808ca78e653c7cdd9018ceb10ff947e91aa49966c53bf9de/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/ee7278f85ad5c786fd43d699f6f6d0125eef344dc4259dbeded0a4e084516dca/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/3c12c72be72d6cbea6e7d69a8bee622f535552356511ca9b6bc4fc4de2c0e775/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/1c2e61aa71765621347448416cacc2cb42b833ec97f9fb8fbe26bfb16ab5cb77/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/b57709fc3fefc3bba81bc8651decf09558cef64137d20332c75f43b78e340659/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/9db0e1eb89ccecb1f5ac0a0bf6707f7d0f61320b5e756939b151935dd2406002/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/a38e452b864110d5f0b16f15747e718367ba6cb17f1b52857433b39733ac72ce/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/f92aa3e67a02546136c3a8843af2ebed8aad1c759966fb03630c473c72c6559c/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/b47ee629b78da9f88a600f6e2dcc1ded759b55a5d52e3ee016e5eeb83265770d/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/b8373519def3a1f3bb5acf84973f31545b75065804604f78473db27c5df9765e/image.jpg")!,
]

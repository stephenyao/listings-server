import Vapor

enum Suburb: String {
  case richmond
  case pointCook = "pointcook"
  case glenWaverly = "glenwaverly"
}

struct Listing: Content {
  let title: String

  let price: String

  let agencyName: String

  let imageURL: URL

  static func all() -> [Listing] {
    let addresses = [richmondAddresses, pointCookAddresses, glenWaverlyAddresses].flatMap { $0 }
    let images = [richmondImages, pointCookImages, glenWaverlyImages].flatMap { $0 }

    return Listing.compose(addresses: addresses, imagesURLs: images)
  }

  static func richmond() -> [Listing] {
    return Listing.compose(addresses: richmondAddresses, imagesURLs: richmondImages)
  }

  static func pointCook() -> [Listing] {
    return Listing.compose(addresses: pointCookAddresses, imagesURLs: pointCookImages)
  }

  static func glenWaverly() -> [Listing] {
    return Listing.compose(addresses: glenWaverlyAddresses, imagesURLs: glenWaverlyImages)
  }

  private static func compose(addresses: [String], imagesURLs: [URL]) -> [Listing] {
    return zip(addresses, imagesURLs)
      .map { Listing(title: $0, price: "$600k - 750k", agencyName: "Ray White", imageURL: $1) }
  }
}

private let glenWaverlyAddresses = [
  "5 Spear Court, Glen Waverly, 3150",
  "34 Grantly Drive, Glen Waverly, 3150",
  "45 Atheldene Drive, Glen Waverly, 3150",
  "18 Cooper Avenue, Glen Waverly, 3150",
  "25 Larkspur Circuit, Glen Waverly, 3150",
  "50 Nottingham Street, Glen Waverly, 3150",
  "4 Roswell Street, Glen Waverly, 3150",
  "2 Daryl Avenue, Glen Waverly, 3150",
  "6 Windella Crescent, Glen Waverly, 3150",
  "8 Hallows Street, Glen Waverly, 3150",
]

private let glenWaverlyImages = [
  URL(string: "https://i2.au.reastatic.net/1125x844/b41a3bdba485cb8531f8a45a58675412e54443c480bc2771d7deadf601ea082f/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/9390f148c314a2323d09597407b79fa07abd73da5f2e1c0ae78b6f68b6ce1ed3/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/477b49bb126f03780b2cf59f103741dc544ead9c9326903eec41d32500eaf867/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/4250c0b28d0541ec72849f3e24eb39b7c29a9edd0744b9aae223b6c7027ef235/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/8c8685558f9e017a314719a0a4a4deebeb1bb9431fd1ab42cd98cf0310ac2110/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/0eaaa06fd5f205f45601a31c7575d82f583535ed8a68b5f23ced9299ca3faf2d/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/0be4df41942eaa7318ce2b43f32756ce67ea026c83807fc44743915114e5b8c9/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/f6616084c318fe25859d970c3c55b9575272b25efd7c72c3c80052772d9af2db/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/34b7bb736243d27dc7cdcdc23a9dcdf609f346454b9209c05a93d70481690763/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/4a2bc8cbc7a84f00d7aa7043b93c03560f4c4c0cc5f974a3a23f34ffb17482bb/image.jpg")!,
]

private let pointCookAddresses = [
  "5 Brampton Close, Point Cook, 3030",
  "7 Rhode Island Close, Point Cook, 3030",
  "5 Waves Drive, Point Cook, 3030",
  "13 Park Lane, Point Cook, 3030",
  "8 Prudence Parade, Point Cook, 3030",
  "14 Payson Drive, Point Cook, 3030",
  "1 Strathdon Place, Point Cook, 3030",
  "58 Lincoln Health Boulevard, Point Cook, 3030",
  "3 Bronhill Vista, Point Cook, 3030",
  "52 Jamieson Way, Point Cook, 3030",
]

private let pointCookImages = [
  URL(string: "https://i2.au.reastatic.net/1125x844/a7fa4e83dd02ab96f83078455eca6a0b286154950aa0377da034785d9b576334/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/ffdfd1a8efc7825e7f77020fad5c6dcf7f7048adf86b36576cf71db7e388ca70/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/848c58f6d97111e428c3f5aa4c41ea6c6b626e2575505f49f51a3e74f2b93ee7/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/4620cd04d557371a2546aee282cdaa6011a796219f94be4d12165add3ba04448/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/1d750a20d7caf5c108cbe391b20876d760cecc2e3ab0de749943a683d830e529/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/1f049863ceeb71de10c8a21639020fe83279c4c80b17d5530f4265612806ae48/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/4748a5f435e958de5df192c16619ab55d56fb3a46979e7820fefebd4a0931f3b/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/d827e225500848653107d0e7aa9daa8f6321546730c8fba1d6d28be7d77100b3/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/8315c0e2418e2dd73d03a198a6b57bfc11f31ee7b11b5f1619c91ec5cb907809/image.jpg")!,
  URL(string: "https://i2.au.reastatic.net/1125x844/c9e2826c848f535644c4a244d186cb197aac7bcb46ff7a641e41a8e3f2fde5d8/image.jpg")!,
]

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

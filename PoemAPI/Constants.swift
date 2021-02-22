struct poemData: Decodable{
    var title:String
    var content:String
    var url:String
    var poet:poetData
}

struct poetData: Decodable{
    var name:String
    var url:String
}

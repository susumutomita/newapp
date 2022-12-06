struct Square{
    var sideLength = 3
    var area:Int
    {
        sideLength * sideLength
    }
}
let square = Square()
print(square.area)

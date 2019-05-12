# Convert-Text-File-To-ArrayList

=========

## Convert Text File To ArrayList in Swift 5.

### In this demo show Convert Text File To ArrayList.

------------
Added Some screens here.

![](https://github.com/pawankv89/Convert-Text-File-To-ArrayList/blob/master/images/screen_1.png)



## Usage
------------

#### Convert Text File To ArrayList 

```swift

func loadListOfCountries() {

countryList = []

// Specify the path to the countries list file.
let pathToFile = Bundle.main.path(forResource: "countries", ofType: "txt")

if let path = pathToFile {
// Load the file contents as a string.
let countriesString = try! String(contentsOfFile: path, encoding: String.Encoding.utf8)

// Append the countries from the string to the dataArray array by breaking them using the line change character.
countryList = countriesString.components(separatedBy: "\n")


//Print Array List
print("countryList:-\(countryList)")

self.tableview.reloadData()
}
}

```



## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 

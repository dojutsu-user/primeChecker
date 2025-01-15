import SwiftUI

struct ContentView: View {
    @State private var inputNumber: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Prime Checker")
                .font(.largeTitle)
                .padding()
            
            TextField("Enter a number", text: $inputNumber)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .keyboardType(.numberPad)
            
            Button(action: testPrime) {
                Text("Check if Prime")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Text(result)
                .font(.title)
                .padding()
            
            Spacer()
        }
        .padding()
    }
    
    func testPrime() {
        guard let number = Int(inputNumber), number > 0 else {
            result = "Please enter a valid positive integer."
            return
        }
        
        if PrimeUtils.isPrime(number) {
            result = "\(number) is a prime number!"
        } else {
            result = "\(number) is not a prime number."
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 xcodebuild -project 'primeChecker.xcodeproj' \
  -target 'primeChecker' \
  -configuration Debug \
  -sdk iphonesimulator \
  IPHONEOS_DEPLOYMENT_TARGET=16.0
 */

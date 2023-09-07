import SwiftUI

struct WheelDialView: View {
    @State private var selectedDigits = Array(repeating: 0, count: 4)

    var body: some View {
        VStack {
            Text("Selected Digits: \(selectedDigits.map { String($0) }.joined())")
            PickerWrapper(selectedDigits: $selectedDigits)
        }
    }
}

struct PickerWrapper: UIViewRepresentable {
    @Binding var selectedDigits: [Int]

    let numberOfComponents = 4
    let numberOfRows = 100000 // Large number to simulate infinite scrolling

    func makeUIView(context: Context) -> UIPickerView {
        let picker = UIPickerView()
        picker.delegate = context.coordinator
        picker.dataSource = context.coordinator
        return picker
    }

    func updateUIView(_ uiView: UIPickerView, context: Context) {
        for (index, digit) in selectedDigits.enumerated() {
            let row = numberOfRows / 10 * 5 + digit
            uiView.selectRow(row, inComponent: index, animated: true)
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
        var parent: PickerWrapper

        init(_ parent: PickerWrapper) {
            self.parent = parent
        }

        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return parent.numberOfComponents
        }

        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return parent.numberOfRows
        }

        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return String(row % 10)
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if component == 0 {
                let previousDigit = parent.selectedDigits[0]
                parent.selectedDigits[component] = row % 10
                
                // Logic for carrying over
                if previousDigit == 9 && parent.selectedDigits[0] == 0 {
                    parent.selectedDigits[1] = (parent.selectedDigits[1] + 1) % 10
                } else if previousDigit == 0 && parent.selectedDigits[0] == 9 {
                    parent.selectedDigits[1] = (parent.selectedDigits[1] - 1 + 10) % 10
                }
            }
            
            // TODO: Similar logic for other wheels if you want them to also interact
            
            let newRow = parent.numberOfRows / 10 * 5 + parent.selectedDigits[component]
            pickerView.selectRow(newRow, inComponent: component, animated: false)
        }
    }
}

struct WheelDialView_Previews: PreviewProvider {
    static var previews: some View {
        WheelDialView()
    }
}

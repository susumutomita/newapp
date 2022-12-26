//
//  ImagePicker.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/12/24.
//

import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    
    @Binding var image:Image?
    @Binding var isPicking: Bool
    func makeCoordinator() ->Coordinator {
        Coordinator(self)
    }
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
    }
}

struct ImagePicker_Previews: PreviewProvider {
    static var previews: some View {
        ImagePicker(image:.constant(nil),isPicking: .constant(true))
    }
}

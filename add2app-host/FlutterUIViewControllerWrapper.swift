//
//  FlutterUIViewControllerWrapper.swift
//  add2app-host
//
//  Created by ShinyaSakemoto on 2021/09/26.
//

import Foundation
import Flutter
import SwiftUI

struct FlutterViewControllerWrapper : UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> FlutterViewController {
        return FlutterViewController()
    }

    func updateUIViewController(_ uiViewController: FlutterViewController, context: Context) {
    }
}

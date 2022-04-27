//
//  ContentView.swift
//  businessCard
//
//  Created by a-robota on 4/19/22.
// [CONVERTED PROJECT FROM SWIFTUI]

import SwiftUI
import UIKit



struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page] {
        
            // Make View Control
        func makeUIViewController(context: Context) -> UIPageViewController {
            let pageViewController = UIPageViewController(
                transitionStyle: .scroll,
                navigationOrientation: .horizontal)
            return pageViewController
        }
            // Update View Control
        
        func updateUIViewController(_ pageViewController: UIPageViewController, context: Context){
            pageViewController.setViewControllers(
                [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)

        }
        
        class Coordinator: NSObject {
            var parent: PageViewController

            init(_ contentView: PageViewController) {
                parent = contentView
            }
        }
        
        
        ZStack{
            Color(red:0.08, green:0.60, blue:0.63)
                .edgesIgnoringSafeArea(.all)
                .border(Color.white, width: 3)
            VStack{
    
                Image("wsb") // Circle Image View 
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth:4))
                Divider()

            Text("WSB!!") // Text Under Image
                    .font(Font.custom("Dancing_Script", size: 35)) // custom font, from google fonts (info.plist)
                .bold()
                .foregroundColor(.white)
            
            Divider()
            Text("Scam Artist")
                .foregroundColor(.white)
                .font(.system(size:20))
            Divider()
                InfoView(text: "Elit_Scammer", imageName: "mount")

            }
        }
        
    }
    

}


}


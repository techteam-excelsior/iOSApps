//
//  pdfextension.swift
//  PathsNLayers
//
//  Created by Vishal Hosakere on 17/03/19.
//  Copyright © 2019 Vishal Hosakere. All rights reserved.
//

import UIKit

extension UIView {
    
    // Export pdf from Save pdf in drectory and return pdf file path
    func exportAsPdfFromView(name forName: String, auxView: UIView?, attachBelow below: Bool?) -> UIViewController? {
        scaler(view: self)
        var pdfPageFrame : CGRect
        if below == true{
            pdfPageFrame = CGRect(x: 0, y: 0, width: max(self.bounds.width , (auxView?.bounds.width ?? 0)), height: self.bounds.height + (auxView?.bounds.height ?? 0))
        }
        else{
            pdfPageFrame = CGRect(x: 0, y: 0, width: self.bounds.width + (auxView?.bounds.width ?? 0), height: max(self.bounds.height , (auxView?.bounds.height ?? 0)))
        }
        let pdfData = NSMutableData()
        UIGraphicsBeginPDFContextToData(pdfData, pdfPageFrame, nil)
        UIGraphicsBeginPDFPageWithInfo(pdfPageFrame, nil)
        guard let pdfContext = UIGraphicsGetCurrentContext() else { return nil }
        
        var scaleX : CGFloat = 1
        if auxView != nil{
            scaleX = auxView!.bounds.width / self.bounds.width
        }
        
        if below == true{
            self.drawHierarchy(in: CGRect(x: 0, y: 0, width: self.bounds.width * scaleX , height: self.bounds.height * scaleX ), afterScreenUpdates: true)
            auxView?.drawHierarchy(in: CGRect(x: 0, y: self.bounds.height, width: auxView?.bounds.width ?? 0, height: auxView?.bounds.height ?? 0), afterScreenUpdates: true)
        }
        else{
            self.drawHierarchy(in: CGRect(x: 0, y: 0, width: auxView?.bounds.width ?? self.bounds.width , height: self.bounds.height), afterScreenUpdates: true)
            auxView?.drawHierarchy(in: CGRect(x: self.bounds.width, y: 0, width: auxView?.bounds.width ?? 0, height: auxView?.bounds.height ?? 0), afterScreenUpdates: true)
        }
        
        UIGraphicsEndPDFContext()
        
        let pdfPreview = PdfPreviewViewController(data: pdfData)
        return pdfPreview

        
    }
    
    func exportAsImage(auxView: UIView?, attachBelow below: Bool){
        //scaler(view: self)
        // Create the image context to draw in
        var size: CGSize
        if below == true{
            size = CGSize(width: max(self.bounds.width , (auxView?.bounds.width ?? 0)), height: self.bounds.height + (auxView?.bounds.height ?? 0))
        }
        else{
            size = CGSize(width: self.bounds.width + (auxView?.bounds.width ?? 0), height: max(self.bounds.height , (auxView?.bounds.height ?? 0)))
        }
        UIGraphicsBeginImageContextWithOptions(size, false, UIScreen.main.scale)
        // Get that context
        // Draw the image view in the context
        defer { UIGraphicsEndImageContext() }
        
        var scaleX : CGFloat = 1
        if auxView != nil{
            scaleX = auxView!.bounds.width / self.bounds.width
        }
        
        if below == true{
            self.drawHierarchy(in: CGRect(x: 0, y: 0, width: self.bounds.width * scaleX , height: self.bounds.height * scaleX ), afterScreenUpdates: true)
            auxView?.drawHierarchy(in: CGRect(x: 0, y: self.bounds.height, width: auxView?.bounds.width ?? 0, height: auxView?.bounds.height ?? 0), afterScreenUpdates: true)
        }
        else{
            self.drawHierarchy(in: CGRect(x: 0, y: 0, width: auxView?.bounds.width ?? self.bounds.width , height: self.bounds.height), afterScreenUpdates: true)
            auxView?.drawHierarchy(in: CGRect(x: self.bounds.width, y: 0, width: auxView?.bounds.width ?? 0, height: auxView?.bounds.height ?? 0), afterScreenUpdates: true)
        }
        // You may or may not need to repeat the above with the imageView's subviews // Then you grab the "screenshot" of the context
        let image = UIGraphicsGetImageFromCurrentImageContext()
        // Be sure to end the context
        UIGraphicsEndImageContext()
        //
        //        UIGraphicsBeginImageContextWithOptions(self.frame.size, false, 0.0)
        //        //self.layer.contentsScale = 8
        //        self.layer.render(in: UIGraphicsGetCurrentContext()!)
        //        let image = UIGraphicsGetImageFromCurrentImageContext()
        //        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(image!, nil, nil, nil)
    }
    
    func scaler(view: UIView) {
        //        view.layer.contentsScale = 8
        view.contentScaleFactor = 8
        for subView in view.subviews {
            scaler(view: subView)
        }
        //        let subLayerArray = view.layer.sublayers
        //        for subLayer in subLayerArray ?? []{
        //            subLayer.contentsScale = 8
        //        }
    }
    
    // Save pdf file in document directory
    func saveViewPdf(data: NSMutableData, name: String) -> String {
        let file = FileHandling(name: "")
        let pdfPath = file.getURL(for: .Project).appendingPathComponent(name+".pdf")
        print(pdfPath)
        if data.write(to: pdfPath, atomically: true) {
            return pdfPath.path
        } else {
            return ""
        }
    }
}

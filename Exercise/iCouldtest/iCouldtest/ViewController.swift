//
//  ViewController.swift
//  iCouldtest
//
//  Created by Zelda Yuan on 2017-03-10.
//  Copyright © 2017 Zelda Yuan. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController,UIDocumentMenuDelegate,UIDocumentPickerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func handleImportMenuPressed(sender: AnyObject) {
        let importMenu = UIDocumentMenuViewController(documentTypes: [(kUTTypeText as NSString) as String], in: .import);
        importMenu.delegate = self;
        importMenu.popoverPresentationController?.sourceView = self.view;
        importMenu.addOption(withTitle: "Create New Document", image: nil, order: .first, handler: { print("New Doc Requested") });
        present(importMenu, animated: true, completion: nil);
    }
    
    
    @IBAction func handleImportPickerPressed(sender: AnyObject) {
        let documentPicker = UIDocumentPickerViewController(documentTypes: [(kUTTypeText as NSString) as String], in: .import);
        documentPicker.delegate = self;
        present(documentPicker, animated: true, completion: nil);
    }
    
    // MARK:- UIDocumentMenuDelegate
    func documentMenu(_ documentMenu: UIDocumentMenuViewController, didPickDocumentPicker documentPicker: UIDocumentPickerViewController) {
        documentPicker.delegate = self;
        present(documentPicker, animated: true, completion: nil);
    }
    
    // MARK:- UIDocumentPickerDelegate
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
        // Do something
        print(url);
    }
    
}

//
//  ViewController.swift
//  ChildViewControllerDemo
//
//  Created by Darktt on 2024/5/14.
//

import UIKit

public
class ViewController: UIViewController
{
    // MARK: - Properties -
    
    @IBOutlet private
    weak var pageContentView: UIView!
    
    // MARK: - Methods -
    // MARK: Initial Method
    
    static
    func instance() -> ViewController
    {
        let viewController = ViewController(nibName: "ViewController", bundle: nil)
        
        return viewController
    }
    
    // MARK: View Live Cycle
    
    public override 
    func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
    }
    
    public override 
    func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
    }
    
    public override 
    func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        
    }
    
    public override 
    func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(animated)
        
    }
    
    public override 
    func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        let viewController = PageViewController()
        
        self.pageContentView.addSubview(viewController.view)
        self.addChild(viewController)
    }
    
    public override 
    func viewDidLayoutSubviews()
    {
        super.viewDidLayoutSubviews()
        
        self.pageContentView.subviews.forEach {
            
            $0.frame = self.pageContentView.bounds
        }
    }
    
    deinit
    {
        
    }
}


//
//  PageViewController.swift
//  ChildViewControllerDemo
//
//  Created by Darktt on 2024/5/14.
//

import UIKit

public
class PageViewController: UIPageViewController
{
    // MARK: - Properties -
    
    // MARK: - Methods -
    // MARK: Initial Method
    
    public
    init()
    {
        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal)
        
        self.dataSource = self
    }
    
    internal required init?(coder: NSCoder)
    {
        super.init(coder: coder)
    }
    
    public override func awakeFromNib()
    {
        super.awakeFromNib()
        
    }
    
    // MARK: View Live Cycle
    
    public override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
    }
    
    public override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
    }
    
    public override func viewWillDisappear(_ animated: Bool)
    {
        super.viewWillDisappear(animated)
        
    }
    
    public override func viewDidDisappear(_ animated: Bool)
    {
        super.viewDidDisappear(animated)
        
    }
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.setViewControllers([RandomColorViewController()], direction: .forward, animated: false)
    }
    
    deinit
    {
        
    }
}

// MARK: - Delegate Methods -

extension PageViewController: UIPageViewControllerDataSource
{
    public
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        RandomColorViewController()
    }
    
    public
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        RandomColorViewController()
    }
    
}

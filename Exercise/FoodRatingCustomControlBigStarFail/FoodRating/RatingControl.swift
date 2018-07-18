//
//  RatingControl.swift
//  FoodRating
//
//  Created by Zelda Yuan on 2017-05-16.
//  Copyright © 2017 Zelda Yuan. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0){
        didSet {
            setupButtons()
        }
    }
    
    @IBInspectable var starCount: Int = 5{
        didSet {
            setupButtons()
        }
    }
    
    //MARK: Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init?(coder:NSCoder){
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        
        // clear any existing buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        // Load Button Images
        //   let bundle = Bundle(for: type(of: self))
        let bundle = NSBundle(forClass: self.dynamicType)
        
        //let filledStar = UIImage(named: "filledStar", in: bundle, compatibleWith: self.traitCollection)
        //let emptyStar = UIImage(named:"emptyStar", in: bundle, compatibleWith: self.traitCollection)
        
        let filledStarImage = UIImage(named: "filledStar")
        let emptyStarImage = UIImage(named: "emptyStar")
        
        // let highlightedStar = UIImage(named:"highlightedStar", in: bundle, compatibleWith: self.traitCollection)
        let highlightedStar = UIImage(named:"highlightedStar")
        
        
        for _ in 0..<starCount {
            // Create the button
            let button = UIButton()
            //button.backgroundColor = UIColor.redColor()
            
            // Set the button images
            /* button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected]) */
            
            button.setImage(emptyStarImage, forState: .Normal)
            button.setImage(filledStarImage, forState: .Selected)
            button.setImage(highlightedStar, forState: .Highlighted)
            button.setImage(highlightedStar, forState: [.Highlighted, .Selected])
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            //button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.heightAnchor.constraintEqualToConstant(starSize.height)
            button.widthAnchor.constraintEqualToConstant(starSize.width)
            
            // Setup the button action
            /*   button.addTarget(self, action:
            #selector(RatingControl.ratingButtonTapped(button:)),for: .touchUpInside) */
            
            button.addTarget(self, action: "ratingButtonTapped:",forControlEvents: .TouchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }
    
}

//
//  GradientClass.swift
//  LoginApp
//
//  Created by Антон Лоскутов on 02.10.2022.
//

import Foundation
import UIKit

class GradientView: UIView {
    
    private let gradientLaer = CAGradientLayer()
    
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setupGradientColors()
        }
    }
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setupGradientColors()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupGradient()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLaer.frame = bounds
    }
    
    private func setupGradient() {
        self.layer.addSublayer(gradientLaer)
        setupGradientColors()
    }
    private func setupGradientColors() {
             if let startColor = startColor,
                let endColor = endColor
        {
                gradientLaer.colors = [
                    startColor.cgColor,
                    endColor.cgColor
                ]
        }
    }
}

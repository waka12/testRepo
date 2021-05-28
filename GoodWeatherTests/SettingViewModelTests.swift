//
//  SettingViewModelTests.swift
//  GoodWeatherTests
//
//  Created by cw-rikuma.wakabayashi on 2021/05/19.
//

import XCTest
@testable import GoodWeather

class SettingViewModelTests: XCTestCase {

    private var settingsVM: SettingsViewModel!
    private var addWetherVM: AddWeatherViewModel!
    
    override func setUp() {
        super.setUp()
        self.settingsVM = SettingsViewModel()
        self.addWetherVM = AddWeatherViewModel()
    }
    
    func test_should_return_correct_display_name_for_fafrenheit() {
        XCTAssertEqual(self.settingsVM.selectedUnit.displayName, "Celcius")
    }
    
    func test_should_make_sure_that_default_selected_unit_is_fehrenheit() {
        XCTAssertEqual(settingsVM.selectedUnit, .celsius)
    }
    
    func test_should_be_able_to_save_user_unit_selection() {
        
        self.settingsVM.selectedUnit = .celsius
        let userDefaults = UserDefaults.standard
        XCTAssert((userDefaults.value(forKey: "unit") != nil))
        
    }
    
    override class func tearDown() {
        super.tearDown()
        
        let userDeaults = UserDefaults.standard
        userDeaults.removeObject(forKey: "unit")
    }

}

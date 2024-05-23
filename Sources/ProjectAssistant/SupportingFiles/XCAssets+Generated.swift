// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// Deprecated typealiases
@available(*, deprecated, renamed: "ColorAsset.Color", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetColorTypeAlias = ColorAsset.Color
@available(*, deprecated, renamed: "ImageAsset.Image", message: "This typealias will be removed in SwiftGen 7.0")
internal typealias AssetImageTypeAlias = ImageAsset.Image

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
internal enum ProjectResources {
  internal enum Assets {
    internal enum Account {
      internal static let lock = ImageAsset(name: "lock")
      internal static let logout = ImageAsset(name: "logout")
    }
    internal static let accountCircleFilled = ImageAsset(name: "AccountCircleFilled")
    internal static let checkbox = ImageAsset(name: "Checkbox")
    internal static let fileCheck = ImageAsset(name: "File_Check")
    internal static let fileUpload = ImageAsset(name: "File_Upload")
    internal static let folder = ImageAsset(name: "Folder")
    internal enum Generics {
      internal static let addGray = ImageAsset(name: "add_gray")
      internal static let addRoundGray = ImageAsset(name: "add_round_gray")
      internal static let arrowDownBlue = ImageAsset(name: "arrow_down_blue")
      internal static let arrowLeftBlack = ImageAsset(name: "arrow_left_black")
      internal static let arrowRight = ImageAsset(name: "arrow_right")
      internal static let checkmarkGreen = ImageAsset(name: "checkmark_green")
      internal static let checkmarkRoundBlue = ImageAsset(name: "checkmark_round_blue")
      internal static let downCopy = ImageAsset(name: "down copy")
      internal static let unCheckbox = ImageAsset(name: "unCheckbox")
    }
    internal static let lockFilled = ImageAsset(name: "LockFilled")
    internal static let personFilled = ImageAsset(name: "PersonFilled")
    internal static let phoneFilled = ImageAsset(name: "PhoneFilled")
    internal static let addCoBuyerIcon = ImageAsset(name: "add_coBuyer_icon")
    internal static let addSignIcon = ImageAsset(name: "add_sign_icon")
    internal static let addressInformationIcon = ImageAsset(name: "address_information_icon")
    internal static let appIconBlack = ImageAsset(name: "app_icon_black")
    internal static let appIconWhite = ImageAsset(name: "app_icon_white")
    internal static let backImageSample = ImageAsset(name: "back_image_sample")
    internal static let barChatIcon = ImageAsset(name: "bar_chat_icon")
    internal static let bgWelcomeImage = ImageAsset(name: "bg_welcome_image")
    internal static let cancelWhite = ImageAsset(name: "cancel_white")
    internal static let captureBackIcon = ImageAsset(name: "capture_back_icon")
    internal static let captureBackSpanishIcon = ImageAsset(name: "capture_back_spanish_icon")
    internal static let captureFrontIcon = ImageAsset(name: "capture_front_icon")
    internal static let captureFrontSpanishIcon = ImageAsset(name: "capture_front_spanish_icon")
    internal static let chartAddressCompletedSpanishIcon = ImageAsset(name: "chart_address_completed_spanish_icon")
    internal static let chartAddressIncompletedSpanishIcon = ImageAsset(name: "chart_address_incompleted_spanish_icon")
    internal static let chartClosingCompletedIcon = ImageAsset(name: "chart_closing_completed_icon")
    internal static let chartClosingCompletedSpanishIcon = ImageAsset(name: "chart_closing_completed_spanish_icon")
    internal static let chartClosingIncompletedIcon = ImageAsset(name: "chart_closing_incompleted_icon")
    internal static let chartClosingIncompletedSpanishIcon = ImageAsset(name: "chart_closing_incompleted_spanish_icon")
    internal static let chartCobuyerCompletedIcon = ImageAsset(name: "chart_cobuyer_completed_icon")
    internal static let chartCobuyerIncompletedIcon = ImageAsset(name: "chart_cobuyer_incompleted_icon")
    internal static let chartDealCompletedIcon = ImageAsset(name: "chart_deal_completed_icon")
    internal static let chartDealIncompletedIcon = ImageAsset(name: "chart_deal_incompleted_icon")
    internal static let chartHardCreditCompletedIcon = ImageAsset(name: "chart_hardCredit_completed_icon")
    internal static let chartHardCreditIncompletedIcon = ImageAsset(name: "chart_hardCredit_incompleted_icon")
    internal static let chartIdCompletedIcon = ImageAsset(name: "chart_id_completed_icon")
    internal static let chartIdCompletedSpanishIcon = ImageAsset(name: "chart_id_completed_spanish_icon")
    internal static let chartIdIncompletedIcon = ImageAsset(name: "chart_id_incompleted_icon")
    internal static let chartIdIncompletedSpanishIcon = ImageAsset(name: "chart_id_incompleted_spanish_icon")
    internal static let chartPrelimCompletedIcon = ImageAsset(name: "chart_prelim_completed_icon")
    internal static let chartPrelimIncompletedIcon = ImageAsset(name: "chart_prelim_incompleted_icon")
    internal static let chartPurchaseVehicleCompletedIcon = ImageAsset(name: "chart_purchaseVehicle_completed_icon")
    internal static let chartPurchaseVehicleIncompletedIcon = ImageAsset(name: "chart_purchaseVehicle_incompleted_icon")
    internal static let chartPurchaseCompletedSpanishIcon = ImageAsset(name: "chart_purchase_completed_spanish_icon")
    internal static let chartPurchaseIncompleteEnglishIcon = ImageAsset(name: "chart_purchase_incomplete_english_icon")
    internal static let chartPurchaseIncompletedSpanishIcon = ImageAsset(name: "chart_purchase_incompleted_spanish_icon")
    internal static let chartTradeVehicleCompletedIcon = ImageAsset(name: "chart_tradeVehicle_completed_icon")
    internal static let chartTradeVehicleIncompletedIcon = ImageAsset(name: "chart_tradeVehicle_incompleted_icon")
    internal static let checkGreen = ImageAsset(name: "check_green")
    internal static let checkedIcon = ImageAsset(name: "checked_icon")
    internal static let circleCheckmark = ImageAsset(name: "circle_checkmark")
    internal static let circleCheckmarkPhone = ImageAsset(name: "circle_checkmark_phone")
    internal static let circlePlus = ImageAsset(name: "circle_plus")
    internal static let circlePlusPhone = ImageAsset(name: "circle_plus_phone")
    internal static let clear = ImageAsset(name: "clear")
    internal static let clearFill = ImageAsset(name: "clear_fill")
    internal static let closeBanner = ImageAsset(name: "close_banner")
    internal static let closingFormIcon = ImageAsset(name: "closing_form_icon")
    internal static let closingFormsHeaderIcon = ImageAsset(name: "closing_forms_header_icon")
    internal static let contantAckIcon = ImageAsset(name: "contant_ack_icon")
    internal static let creditCompletedSpanishIcon = ImageAsset(name: "credit_completed_spanish_icon")
    internal static let creditFormsHeaderIcon = ImageAsset(name: "credit_forms_header_icon")
    internal static let creditFormsIcon = ImageAsset(name: "credit_forms_icon")
    internal static let creditFormsIcon2 = ImageAsset(name: "credit_forms_icon_2")
    internal static let creditHeaderIcon = ImageAsset(name: "credit_header_icon")
    internal static let creditIncompletedSpanishIcon = ImageAsset(name: "credit_incompleted_spanish_icon")
    internal static let crossFile = ImageAsset(name: "cross_file")
    internal static let crossWhite = ImageAsset(name: "cross_white")
    internal static let darkTextIcon = ImageAsset(name: "dark_text_icon")
    internal static let dashboardLogo = ImageAsset(name: "dashboard_logo")
    internal static let documentIcon = ImageAsset(name: "document_icon")
    internal static let doller = ImageAsset(name: "doller")
    internal static let down = ImageAsset(name: "down")
    internal static let downIcon = ImageAsset(name: "down_icon")
    internal static let driverLicense = ImageAsset(name: "driver_license")
    internal static let driverLicenseHeaderIcon = ImageAsset(name: "driver_license_header_icon")
    internal static let driverLicenseIcon1 = ImageAsset(name: "driver_license_icon 1")
    internal static let driverLicenseIcon = ImageAsset(name: "driver_license_icon")
    internal static let dropDown = ImageAsset(name: "drop_down")
    internal static let dropDownArrow = ImageAsset(name: "drop_down_arrow")
    internal static let dropTextfieldArrow = ImageAsset(name: "drop_textfield_arrow")
    internal static let employeeAccessIcon = ImageAsset(name: "employee_access_icon")
    internal static let employmentChartCompletedSpanishIcon = ImageAsset(name: "employment_chart_completed_spanish_icon")
    internal static let employmentChartIncompletedSpanishIcon = ImageAsset(name: "employment_chart_incompleted_spanish_icon")
    internal static let employmentInfoIcon = ImageAsset(name: "employment_info_icon")
    internal static let emptySquareCheckIcon = ImageAsset(name: "empty_square_check_icon")
    internal static let eunifiLogo = ImageAsset(name: "eunifi_logo")
    internal static let exisitingClientIcon = ImageAsset(name: "exisiting_client_icon")
    internal static let filledFilter = ImageAsset(name: "filled_filter")
    internal static let filter = ImageAsset(name: "filter")
    internal static let form = ImageAsset(name: "form")
    internal static let frontImageSample = ImageAsset(name: "front_image_sample")
    internal static let gearIcon = ImageAsset(name: "gear_icon")
    internal static let graniteSubaru = ImageAsset(name: "granite_subaru")
    internal static let groupPeople = ImageAsset(name: "group_people")
    internal static let helpDeskIcon = ImageAsset(name: "help_desk_icon")
    internal static let hillsideLogo = ImageAsset(name: "hillside_logo")
    internal static let id = ImageAsset(name: "id")
    internal static let idHeaderIcon = ImageAsset(name: "id_header_icon")
    internal static let identificationDocumentIcon = ImageAsset(name: "identification_document_icon")
    internal static let identityTheftPrevention = ImageAsset(name: "identity_theft_prevention")
    internal static let imgCheck = ImageAsset(name: "img_check")
    internal static let insuranceCamera = ImageAsset(name: "insurance_camera")
    internal static let insuranceCardHeaderIcon = ImageAsset(name: "insurance_card_header_icon")
    internal static let insuranceCardIcon = ImageAsset(name: "insurance_card_icon")
    internal static let insuranceHeaderIcon = ImageAsset(name: "insurance_header_icon")
    internal static let insuranceIcon = ImageAsset(name: "insurance_icon")
    internal static let ipadDemoPhoto = ImageAsset(name: "ipad_demo_photo")
    internal static let languageAffirmationIcon = ImageAsset(name: "language_affirmation_icon")
    internal static let languageIcon = ImageAsset(name: "language_icon")
    internal static let launchLogo = ImageAsset(name: "launch_logo")
    internal static let launchTextLogo = ImageAsset(name: "launch_text_logo")
    internal static let license = ImageAsset(name: "license")
    internal static let majorWorldLogo = ImageAsset(name: "major_world_logo")
    internal static let newApplicationFormIcon = ImageAsset(name: "new_application_form_icon")
    internal static let noData = ImageAsset(name: "no_data")
    internal static let otherDocumentIcon = ImageAsset(name: "other_document_icon")
    internal static let payStubIcon = ImageAsset(name: "pay_stub_icon")
    internal static let personalAccountIcon = ImageAsset(name: "personal_account_icon")
    internal static let personalInformationIcon = ImageAsset(name: "personal_information_icon")
    internal static let phone = ImageAsset(name: "phone")
    internal static let phoneIcon = ImageAsset(name: "phone_icon")
    internal static let phoneIphone = ImageAsset(name: "phone_iphone")
    internal static let pieChartId = ImageAsset(name: "pie_chart_Id")
    internal static let pieChartClosing = ImageAsset(name: "pie_chart_closing")
    internal static let pieChartClosingWhite = ImageAsset(name: "pie_chart_closing_white")
    internal static let pieChartCredit = ImageAsset(name: "pie_chart_credit")
    internal static let pieChartCreditWhite = ImageAsset(name: "pie_chart_credit_white")
    internal static let pieChartEmployment = ImageAsset(name: "pie_chart_employment")
    internal static let pieChartEmploymentWhite = ImageAsset(name: "pie_chart_employment_white")
    internal static let pieChartHome = ImageAsset(name: "pie_chart_home")
    internal static let pieChartHomeWhite = ImageAsset(name: "pie_chart_home_white")
    internal static let pieChartIdWhite = ImageAsset(name: "pie_chart_id_white")
    internal static let pieChartPersonal = ImageAsset(name: "pie_chart_personal")
    internal static let pieChartPersonalWhite = ImageAsset(name: "pie_chart_personal_white")
    internal static let pieChartPurchase = ImageAsset(name: "pie_chart_purchase")
    internal static let pieChartPurchaseWhite = ImageAsset(name: "pie_chart_purchase_white")
    internal static let placeholder = ImageAsset(name: "placeholder")
    internal static let poweredByEnuifiLogo = ImageAsset(name: "powered_by_enuifi_logo")
    internal static let preliminaryCompletedChartSpanishIcon = ImageAsset(name: "preliminary_completed_chart_spanish_icon")
    internal static let preliminaryFormsIcon = ImageAsset(name: "preliminary_forms_icon")
    internal static let preliminaryIncompletedChartSpanishIcon = ImageAsset(name: "preliminary_incompleted_chart_spanish_icon")
    internal static let privacyNotice = ImageAsset(name: "privacy_notice")
    internal static let privacyPo = ImageAsset(name: "privacy_po")
    internal static let purchaseAck = ImageAsset(name: "purchaseAck")
    internal static let purchaseAckIcon = ImageAsset(name: "purchase_ack_icon")
    internal static let queensAutoLogo = ImageAsset(name: "queens_auto_logo")
    internal static let ramseyAutoICON = ImageAsset(name: "ramsey_auto_ICON")
    internal static let selctedIcon = ImageAsset(name: "selcted_icon")
    internal static let selectIcon = ImageAsset(name: "select_icon")
    internal static let sideArrow = ImageAsset(name: "side_arrow")
    internal static let squareUncheck = ImageAsset(name: "square_uncheck")
    internal static let staffIcon = ImageAsset(name: "staff_icon")
    internal static let streamAutoOutletIslipLogo = ImageAsset(name: "stream_auto_outlet_islip_logo")
    internal static let tapToSign = ImageAsset(name: "tap_to_sign")
    internal static let tapToSignSpanish = ImageAsset(name: "tap_to_sign_spanish")
    internal static let tutorial = ImageAsset(name: "tutorial")
    internal static let uncheckIcon = ImageAsset(name: "uncheck_icon")
    internal static let unselctedIcon = ImageAsset(name: "unselcted_icon")
    internal static let unselectedRadio = ImageAsset(name: "unselected_radio")
    internal static let uploadDoc = ImageAsset(name: "upload_doc")
    internal static let utilityBillsIcon = ImageAsset(name: "utility_bills_icon")
    internal static let vehicleCarIcon = ImageAsset(name: "vehicle_car_icon")
    internal static let vehicleRegistrationNJSample = ImageAsset(name: "vehicle_registration_NJ_sample")
    internal static let viewDoc = ImageAsset(name: "view_doc")
    internal static let whiteDocumentIcon = ImageAsset(name: "white_document_icon")
  }
  internal enum Colors {
    internal static let aliceBGBlue = ColorAsset(name: "AliceBGBlue")
    internal static let appAliceBlue = ColorAsset(name: "AppAliceBlue")
    internal static let appChambray = ColorAsset(name: "AppChambray")
    internal static let appDodgerBlue = ColorAsset(name: "AppDodgerBlue")
    internal static let appFireBrick = ColorAsset(name: "AppFireBrick")
    internal static let appGeraldine = ColorAsset(name: "AppGeraldine")
    internal static let appHawkesBlue = ColorAsset(name: "AppHawkesBlue")
    internal static let appShakespeare = ColorAsset(name: "AppShakespeare")
    internal static let gray6 = ColorAsset(name: "Gray6")
    internal static let greenTextColor = ColorAsset(name: "GreenTextColor")
    internal static let primaryBlack = ColorAsset(name: "PrimaryBlack")
    internal static let primaryGreen = ColorAsset(name: "PrimaryGreen")
    internal static let primaryLightBlue = ColorAsset(name: "PrimaryLightBlue")
    internal static let secondaryGreen = ColorAsset(name: "SecondaryGreen")
    internal static let secondaryLabelGrayColor = ColorAsset(name: "SecondaryLabelGrayColor")
    internal static let teritaryGreen = ColorAsset(name: "TeritaryGreen")
    internal static let primaryBGGray = ColorAsset(name: "primaryBGGray")
    internal static let primaryTextGray = ColorAsset(name: "primaryTextGray")
    internal static let secondaryBGGray = ColorAsset(name: "secondaryBGGray")
    internal static let secondaryLightBlue = ColorAsset(name: "secondaryLightBlue")
    internal static let teritaryGray = ColorAsset(name: "teritaryGray")
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

internal final class ColorAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  internal private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if os(iOS) || os(tvOS)
  @available(iOS 11.0, tvOS 11.0, *)
  internal func color(compatibleWith traitCollection: UITraitCollection) -> Color {
    let bundle = BundleToken.bundle
    guard let color = Color(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal private(set) lazy var swiftUIColor: SwiftUI.Color = {
    SwiftUI.Color(asset: self)
  }()
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

internal extension ColorAsset.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Color {
  init(asset: ColorAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

internal struct ImageAsset {
  internal fileprivate(set) var name: String

  #if os(macOS)
  internal typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  internal typealias Image = UIImage
  #endif

  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, macOS 10.7, *)
  internal var image: Image {
    let bundle = BundleToken.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let name = NSImage.Name(self.name)
    let image = (bundle == .main) ? NSImage(named: name) : bundle.image(forResource: name)
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if os(iOS) || os(tvOS)
  @available(iOS 8.0, tvOS 9.0, *)
  internal func image(compatibleWith traitCollection: UITraitCollection) -> Image {
    let bundle = BundleToken.bundle
    guard let result = Image(named: name, in: bundle, compatibleWith: traitCollection) else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
  #endif

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
  internal var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

internal extension ImageAsset.Image {
  @available(iOS 8.0, tvOS 9.0, watchOS 2.0, *)
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the ImageAsset.image property")
  convenience init?(asset: ImageAsset) {
    #if os(iOS) || os(tvOS)
    let bundle = BundleToken.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, *)
internal extension SwiftUI.Image {
  init(asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: ImageAsset, label: Text) {
    let bundle = BundleToken.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: ImageAsset) {
    let bundle = BundleToken.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type

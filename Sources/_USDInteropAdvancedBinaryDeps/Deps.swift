// This target exists purely to declare dependencies that SwiftPM binary targets cannot.
//
// The USDInteropAdvanced XCFramework `.swiftinterface` files import OpenUSD/USDInterfaces/USDInteropCxx,
// and without a source target depending on those modules SwiftPM will not provide them when a client
// imports the binary frameworks.

import OpenUSD
import USDInterfaces
import USDInteropCxx


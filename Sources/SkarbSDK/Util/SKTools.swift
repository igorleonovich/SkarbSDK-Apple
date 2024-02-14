import Foundation

#if os(macOS)
final class SKTools {
    
    static func getUniqueMachineIdentifier() -> String? {
        let platformExpert = IOServiceGetMatchingService(kIOMainPortDefault, IOServiceMatching("IOPlatformExpertDevice"))
        guard platformExpert != 0 else { return nil }
        
        defer {
            IOObjectRelease(platformExpert)
        }
        
        let serialNumberCFString = IORegistryEntryCreateCFProperty(platformExpert, kIOPlatformSerialNumberKey as CFString, kCFAllocatorDefault, 0).takeRetainedValue() as? String
        
        return serialNumberCFString
    }
}
#endif

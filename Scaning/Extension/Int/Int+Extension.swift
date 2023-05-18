//
//  Int+Extension.swift
//  StorageCleaner
//
//  Created by 苍蓝猛兽 on 2023/4/12.
//

import UIKit

extension Int {
    /// 字节数转换(MB/GB)
    func byteCountConversion(allowedUnits: ByteCountFormatter.Units = [.useGB, .useMB, .useKB]) -> String {
        let formatter = ByteCountFormatter()
        formatter.allowedUnits = allowedUnits
        return formatter.string(fromByteCount: Int64(self))
    }
}

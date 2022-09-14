//
//  ImageDownload.swift
//  wanted-pre-onboarding
//
//  Created by 1 on 2022/09/14.
//

import Foundation


class ImageDownload {
    static var shared: ImageDownload = ImageDownload()
    var cache: [URL: Data]?
    
    func download(url: URL) -> Data {
        if let cache = cache?[url] {
            return cache
        }
        let data = try! Data(contentsOf: url)
        cache?[url] = data
        return data
    }
}

//
//  PakistanApp.swift
//  Pakistan
//
//  Created by Arsalan Raza on 22/07/2022.
//

import SwiftUI
import BackgroundTasks

@main
struct PakistanApp: App {
    
    @Environment(\.scenePhase) private var phase
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .onChange(of: phase) { newPhase in
            switch newPhase {
            case .background: scheduleAppRefresh()
            default: break
            }
        }
    }
}

func scheduleAppRefresh() {
    let request = BGAppRefreshTaskRequest(identifier: "myapprefresh")
    try? BGTaskScheduler.shared.submit(request)
    print("task running")
}

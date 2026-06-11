import SwiftUI

struct ContentView: View {

    @State private var showAddCustomerView = false
    @State private var showAddOpportunityView = false

    var body: some View {

        NavigationStack {

            VStack(spacing: 20) {

                Image(systemName: "person.3.fill")
                    .font(.system(size: 60))

                Text("Ai Sales")
                    .font(.largeTitle)
                    .bold()

                List {

                    Label("客户管理", systemImage: "person.crop.circle")
                    Label("跟进记录", systemImage: "note.text")
                    Label("商机管理", systemImage: "chart.line.uptrend.xyaxis")

                }
                .frame(height: 200)

                Button("➕ 新增客户") {
                    showAddCustomerView = true
                }
                .buttonStyle(.borderedProminent)

                Button("➕ 新增商机") {
                    showAddOpportunityView = true

                }
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("HOME")
            .sheet(isPresented: $showAddCustomerView) {
                AddCustomerView()
                    }
            .sheet(isPresented: $showAddOpportunityView) {
                AddOpportunityView()
            }
        }
    }
}

#Preview {
    ContentView()
}

import SwiftUI
import SwiftData

struct AddOpportunityView: View {

    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @State private var name = ""
    @State private var stage = ""
    @State private var forecastAmount = ""
    @State private var customer = ""
    @State private var expectedCloseDate = ""
    @State private var probability = ""

    var body: some View {

        NavigationStack {

            Form {

                Section("商机信息") {

                    TextField("商机名称", text: $name)

                    TextField("商机阶段", text: $stage)

                    TextField("预计签单金额", text: $forecastAmount)

                    TextField("客户", text: $customer)

                    TextField("预计签单时间", text: $expectedCloseDate)

                    TextField("成交概率", text: $probability)
                }

                Section {

                    Button("保存商机") {

                        let opportunity = Opportunity(
                            name: name,
                            stage: stage,
                            forecastAmount: forecastAmount,
                            customer: customer,
                            expectedCloseDate: expectedCloseDate,
                            probability: probability,
                            notes: ""
                        )

                        modelContext.insert(opportunity)

                        dismiss()
                    }
                }
            }
            .navigationTitle("新增商机")
        }
    }
}

#Preview {
    AddOpportunityView()
}

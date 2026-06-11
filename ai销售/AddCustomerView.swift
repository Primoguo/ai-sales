import SwiftUI
import SwiftData

struct AddCustomerView: View {

    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) private var dismiss

    @State private var name = ""
    @State private var company = ""
    @State private var phone = ""
    @State private var wechat = ""

    var body: some View {

        NavigationStack {

            Form {

                Section("客户信息") {

                    TextField("姓名", text: $name)

                    TextField("公司", text: $company)

                    TextField("电话", text: $phone)
                    
                    TextField("微信", text: $wechat)
                }

                Section {

                    Button("保存客户") {

                        let customer = Customer(
                            name: name,
                            company: company,
                            phone: phone,
                            wechat:wechat,
                            level: "A",
                            notes: ""
                        )

                        modelContext.insert(customer)

                        dismiss()
                    }

                }
            }
            .navigationTitle("新增客户")
        }
    }
}

#Preview {
    AddCustomerView()
}

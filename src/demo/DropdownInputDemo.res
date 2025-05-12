open RescriptCore

module DropdownInputDemo = {
  @react.component
  let make = () => {
    let (currencyValue, setCurrencyValue) = React.useState(_ => "")
    let (currencyInputValue, setCurrencyInputValue) = React.useState(_ => "")
    
    let (countryValue, setCountryValue) = React.useState(_ => "")
    let (countryInputValue, setCountryInputValue) = React.useState(_ => "")
    
    let (userRoleValue, setUserRoleValue) = React.useState(_ => "")
    let (userRoleInputValue, setUserRoleInputValue) = React.useState(_ => "")
    
    // Currency options with explicit type annotation
    let currencyOptions: array<DropdownInput.Types.dropdownOption> = [
      {label: "USD - US Dollar", value: "USD"},
      {label: "EUR - Euro", value: "EUR"},
      {label: "GBP - British Pound", value: "GBP"},
      {label: "JPY - Japanese Yen", value: "JPY"},
      {label: "INR - Indian Rupee", value: "INR"},
    ]
    
    // Country options with explicit type annotation
    let countryOptions: array<DropdownInput.Types.dropdownOption> = [
      {label: "United States", value: "USA"},
      {label: "United Kingdom", value: "UK"},
      {label: "France", value: "FRA"},
      {label: "Germany", value: "GER"},
      {label: "Japan", value: "JPN"},
      {label: "India", value: "IND"},
      {label: "Australia", value: "AUS"},
      {label: "Canada", value: "CAN"},
    ]
    
    // User role options with explicit type annotation
    let userRoleOptions: array<DropdownInput.Types.dropdownOption> = [
      {label: "Admin", value: "admin"},
      {label: "User", value: "user"},
      {label: "Editor", value: "editor"},
      {label: "Viewer", value: "viewer"},
      {label: "Manager", value: "manager"},
    ]
    
    // Payment method options with explicit type annotation
    let paymentMethodOptions: array<DropdownInput.Types.dropdownOption> = [
      {label: "Credit Card", value: "credit_card"},
      {label: "Debit Card", value: "debit_card"},
      {label: "PayPal", value: "paypal"},
      {label: "Bank Transfer", value: "bank_transfer"},
      {label: "Cash", value: "cash"},
    ]
    
    let handleCurrencyChange = value => {
      setCurrencyInputValue(_ => value)
      Js.log(`Currency input changed: ${value}`)
    }
    
    let handleCurrencySelect = (option: DropdownInput.Types.dropdownOption) => {
      setCurrencyValue(_ => option.value)
      Js.log(`Currency selected: ${option.label} (${option.value})`)
    }
    
    let handleCountryChange = value => {
      setCountryInputValue(_ => value)
      Js.log(`Country input changed: ${value}`)
    }
    
    let handleCountrySelect = (option: DropdownInput.Types.dropdownOption) => {
      setCountryValue(_ => option.value)
      Js.log(`Country selected: ${option.label} (${option.value})`)
    }
    
    let handleUserRoleChange = value => {
      setUserRoleInputValue(_ => value)
      Js.log(`User role input changed: ${value}`)
    }
    
    let handleUserRoleSelect = (option: DropdownInput.Types.dropdownOption) => {
      setUserRoleValue(_ => option.value)
      Js.log(`User role selected: ${option.label} (${option.value})`)
    }
    
    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"DropdownInput Components"->React.string} </h1>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic DropdownInput Examples"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <DropdownInput
            label="Currency"
            placeholder="Enter or select currency"
            options={currencyOptions}
            value={currencyValue}
            inputValue={currencyInputValue}
            onChange={handleCurrencyChange}
            onOptionSelect={handleCurrencySelect}
            dropdownPlaceholder="Select currency"
            className="w-full"
          />
          
          <DropdownInput
            label="Country"
            placeholder="Enter or select country"
            options={countryOptions}
            value={countryValue}
            inputValue={countryInputValue}
            onChange={handleCountryChange}
            onOptionSelect={handleCountrySelect}
            dropdownPlaceholder="Select country"
            dropdownPosition=#right
            className="w-full"
          />
          
          <DropdownInput
            label="User Role"
            placeholder="Enter or select role"
            options={userRoleOptions}
            value={userRoleValue}
            inputValue={userRoleInputValue}
            onChange={handleUserRoleChange}
            onOptionSelect={handleUserRoleSelect}
            dropdownPlaceholder="Select role"
            showSelectedOptionInInput={true}
            className="w-full"
          />
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"DropdownInput States"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <DropdownInput
            label="Default State"
            placeholder="Default state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#default
          />
          
          <DropdownInput
            label="Hover State"
            placeholder="Hover state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#hover
          />
          
          <DropdownInput
            label="Focused State"
            placeholder="Focused state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#focused
          />
          
          <DropdownInput
            label="Filled State"
            placeholder="Filled state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#filled
            value="USD"
            inputValue="US Dollar"
          />
          
          <DropdownInput
            label="Error State"
            placeholder="Error state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#error
            errorMessage="This field has an error"
          />
          
          <DropdownInput
            label="Success State"
            placeholder="Success state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#success
            successMessage="This field is valid"
            value="USD"
            inputValue="US Dollar"
          />
          
          <DropdownInput
            label="Disabled State"
            placeholder="Disabled state"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            state=#disabled
          />
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"DropdownInput Configurations"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <DropdownInput
            label="With Icons"
            placeholder="Select payment method"
            options={paymentMethodOptions}
            dropdownPlaceholder="Payment method"
            className="w-full"
          />
          
          <DropdownInput
            label="With Dropdown Width"
            placeholder="Enter or select currency"
            options={currencyOptions}
            dropdownPlaceholder="Currency"
            dropdownWidth="120px"
            className="w-full"
          />
          
          <DropdownInput
            label="Right Dropdown"
            placeholder="Enter or select country"
            options={countryOptions}
            dropdownPlaceholder="Country"
            dropdownPosition=#right
            className="w-full"
          />
          
          <DropdownInput
            label="Show Selected in Input"
            placeholder="Select role"
            options={userRoleOptions}
            dropdownPlaceholder="Role"
            showSelectedOptionInInput={true}
            className="w-full"
          />
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"DropdownInput with Additional Elements"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <DropdownInput
            label="With Sublabel"
            sublabel="Additional information about this field"
            placeholder="Enter or select an option"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            className="w-full"
          />
          
          <DropdownInput
            label="With Hint"
            hintText="This is a hint to help you fill this field"
            placeholder="Enter or select an option"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            className="w-full"
          />
          
          <DropdownInput
            label="Mandatory Field"
            mandatory={true}
            placeholder="This field is required"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            className="w-full"
          />
          
          <DropdownInput
            label="With Info Tooltip"
            infoTooltip="This tooltip provides additional information about the field"
            placeholder="Hover over the info icon"
            options={currencyOptions}
            dropdownPlaceholder="Select"
            className="w-full"
          />
        </div>
      </div>
      
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"DropdownInput Use Cases"->React.string} </h2>
        <div className="space-y-6">
          <div className="border p-4 rounded-lg bg-gray-50">
            <h3 className="text-lg font-medium mb-2">{"Payment Form"->React.string}</h3>
            <div className="grid grid-cols-1 gap-4">
              <DropdownInput
                label="Currency"
                placeholder="Enter or select currency"
                options={currencyOptions}
                value={currencyValue}
                inputValue={currencyInputValue}
                onChange={handleCurrencyChange}
                onOptionSelect={handleCurrencySelect}
                dropdownPlaceholder="Currency"
                dropdownWidth="100px"
                mandatory={true}
                className="w-full"
              />
              
              <DropdownInput
                label="Payment Method"
                placeholder="Select payment method"
                options={paymentMethodOptions}
                dropdownPlaceholder="Select"
                showSelectedOptionInInput={true}
                mandatory={true}
                className="w-full"
              />
            </div>
            <div className="mt-4">
              <button 
                className={`px-4 py-2 rounded-md text-white font-medium ${currencyValue->Js.String2.length > 0 ? "bg-blue-600 hover:bg-blue-700" : "bg-gray-300 cursor-not-allowed"}`}
                disabled={currencyValue->Js.String2.length === 0}
                onClick={_ => Js.log("Processing payment...")}
              >
                {"Process Payment"->React.string}
              </button>
            </div>
          </div>
          
          <div className="border p-4 rounded-lg bg-gray-50">
            <h3 className="text-lg font-medium mb-2">{"User Profile"->React.string}</h3>
            <div className="grid grid-cols-1 gap-4">
              <DropdownInput
                label="Country"
                placeholder="Enter or select country"
                options={countryOptions}
                value={countryValue}
                inputValue={countryInputValue}
                onChange={handleCountryChange}
                onOptionSelect={handleCountrySelect}
                dropdownPlaceholder="Select country"
                className="w-full"
              />
              
              <DropdownInput
                label="Role"
                placeholder="Enter or select role"
                options={userRoleOptions}
                value={userRoleValue}
                inputValue={userRoleInputValue}
                onChange={handleUserRoleChange}
                onOptionSelect={handleUserRoleSelect}
                dropdownPlaceholder="Select role"
                className="w-full"
              />
            </div>
            <div className="mt-4">
              <button 
                className={`px-4 py-2 rounded-md text-white font-medium ${countryValue->Js.String2.length > 0 && userRoleValue->Js.String2.length > 0 ? "bg-blue-600 hover:bg-blue-700" : "bg-gray-300 cursor-not-allowed"}`}
                disabled={countryValue->Js.String2.length === 0 || userRoleValue->Js.String2.length === 0}
                onClick={_ => Js.log("Saving user profile...")}
              >
                {"Save Profile"->React.string}
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  }
}

// Export the main component
let default = DropdownInputDemo.make 
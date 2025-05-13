module OTPInputDemo = {
  @react.component
  let make = () => {
    let (otpValue4, setOtpValue4) = React.useState(_ => "")
    let (otpValue6, setOtpValue6) = React.useState(_ => "")
    let (otpValueFilled, setOtpValueFilled) = React.useState(_ => "1234")

    let handleOtp4Change = value => {
      setOtpValue4(_ => value)
      Js.log(`4-digit OTP changed: ${value}`)
    }

    let handleOtp6Change = value => {
      setOtpValue6(_ => value)
      Js.log(`6-digit OTP changed: ${value}`)
    }

    let handleOtpFilledChange = value => {
      setOtpValueFilled(_ => value)
      Js.log(`Pre-filled OTP changed: ${value}`)
    }

    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"OTP Input Components"->React.string} </h1>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic 4-Digit OTP Input"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <OTPInput
            label="4-Digit OTP"
            digits=#4
            value={otpValue4}
            onChange={handleOtp4Change}
            hintText="Enter 4-digit code sent to your mobile"
          />
          <div className="text-sm text-gray-600">
            {`Current value: ${otpValue4}`->React.string}
          </div>
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"6-Digit OTP Input"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <OTPInput
            label="6-Digit OTP"
            digits=#6
            value={otpValue6}
            onChange={handleOtp6Change}
            hintText="Enter 6-digit code sent to your email"
          />
          <div className="text-sm text-gray-600">
            {`Current value: ${otpValue6}`->React.string}
          </div>
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"OTP Input States"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <OTPInput label="Default State" digits=#4 state=#default />
          <OTPInput label="Hover State" digits=#4 state=#hover />
          <OTPInput label="Focused State" digits=#4 state=#focused />
          <OTPInput
            label="Filled State"
            digits=#4
            state=#filled
            value={otpValueFilled}
            onChange={handleOtpFilledChange}
          />
          <OTPInput label="Error State" digits=#4 state=#error errorMessage="Invalid OTP code" />
          <OTPInput
            label="Success State"
            digits=#4
            state=#success
            successMessage="OTP verified successfully"
            value="1234"
          />
          <OTPInput label="Disabled State" digits=#4 state=#disabled />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"OTP Input with Labels"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <OTPInput
            label="With Sublabel" digits=#4 sublabel="Additional information about this field"
          />
          <OTPInput
            label="With Hint" digits=#4 hintText="This is a hint to help you fill this field"
          />
          <OTPInput label="Mandatory Field" digits=#4 mandatory={true} />
          <OTPInput
            label="With Info Tooltip"
            digits=#4
            infoTooltip="This tooltip provides additional information about the field"
          />
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4">
          {"OTP Input with Resend Option"->React.string}
        </h2>
        <div className="space-y-4 max-w-md">
          <div>
            <OTPInput
              label="OTP Verification"
              digits=#6
              value={otpValue6}
              onChange={handleOtp6Change}
              hintText="Enter the verification code"
            />
            <div className="mt-2 flex items-center">
              <button
                className="text-blue-500 hover:text-blue-700 text-sm font-medium focus:outline-none"
                onClick={_ => {
                  // In a real app, you would trigger the resend OTP API call here
                  Js.log("Resending OTP...")
                  setOtpValue6(_ => "")
                }}>
                {"Resend OTP"->React.string}
              </button>
              <span className="mx-2 text-gray-400"> {"•"->React.string} </span>
              <span className="text-sm text-gray-500"> {"01:59"->React.string} </span>
            </div>
          </div>
        </div>
      </div>
      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4">
          {"OTP Input with Custom Styling"->React.string}
        </h2>
        <div className="space-y-4 max-w-md">
          <div className="bg-gray-50 p-6 rounded-lg">
            <h3 className="text-lg font-medium text-gray-800 mb-2">
              {"Verify your identity"->React.string}
            </h3>
            <p className="text-sm text-gray-600 mb-4">
              {"We've sent a 4-digit verification code to +1 (***) ***-7890"->React.string}
            </p>
            <OTPInput digits=#4 value={otpValue4} onChange={handleOtp4Change} className="mb-4" />
            <div className="flex justify-between items-center mt-4">
              <button
                className="text-blue-500 hover:text-blue-700 text-sm font-medium focus:outline-none"
                onClick={_ => {
                  // In a real app, you would trigger the resend OTP API call here
                  Js.log("Resending OTP...")
                  setOtpValue4(_ => "")
                }}>
                {"Resend Code"->React.string}
              </button>
              <button
                className={`px-4 py-2 rounded-md text-white font-medium ${otpValue4->Js.String2.length === 4
                    ? "bg-blue-600 hover:bg-blue-700"
                    : "bg-gray-300 cursor-not-allowed"}`}
                disabled={otpValue4->Js.String2.length !== 4}
                onClick={_ => {
                  // In a real app, you would trigger the verification API call here
                  Js.log("Verifying OTP...")
                }}>
                {"Verify"->React.string}
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  }
}

// Export the main component
let default = OTPInputDemo.make

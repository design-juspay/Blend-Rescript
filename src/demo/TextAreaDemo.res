open RescriptCore

module TextAreaDemo = {
  @react.component
  let make = () => {
    let (basicValue, setBasicValue) = React.useState(_ => "")
    let (feedbackValue, setFeedbackValue) = React.useState(_ => "")
    let (bioValue, setBioValue) = React.useState(_ => "")
    
    let handleBasicChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setBasicValue(_ => value)
      Js.log(`Basic TextArea value changed: ${value}`)
    }
    
    let handleFeedbackChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setFeedbackValue(_ => value)
      Js.log(`Feedback TextArea value changed: ${value}`)
    }
    
    let handleBioChange = e => {
      let value = ReactEvent.Form.target(e)["value"]
      setBioValue(_ => value)
      Js.log(`Bio TextArea value changed: ${value}`)
    }
    
    <div className="p-4 space-y-8">
      <h1 className="text-2xl font-bold"> {"TextArea Components"->React.string} </h1>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"Basic TextArea"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextArea
            label="Basic TextArea"
            placeholder="Enter multi-line text here"
            value={basicValue}
            onChange={handleBasicChange}
            className="w-full"
            rows={4}
          />
          <div className="text-sm text-gray-600">
            {`Character count: ${basicValue->Js.String2.length->Belt.Int.toString}`->React.string}
          </div>
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextArea States"->React.string} </h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <TextArea
            label="Default State"
            placeholder="Default state"
            state=#default
            rows={3}
          />
          <TextArea
            label="Hover State"
            placeholder="Hover state"
            state=#hover
            rows={3}
          />
          <TextArea
            label="Focused State"
            placeholder="Focused state"
            state=#focused
            rows={3}
          />
          <TextArea
            label="Filled State"
            placeholder="Filled state"
            state=#filled
            value="This textarea is filled with some example text to demonstrate the filled state"
            rows={3}
          />
          <TextArea
            label="Error State"
            placeholder="Error state"
            state=#error
            errorMessage="This field has an error"
            rows={3}
          />
          <TextArea
            label="Success State"
            placeholder="Success state"
            state=#success
            successMessage="This field is valid"
            rows={3}
            value="This is a valid textarea input"
          />
          <TextArea
            label="Disabled State"
            placeholder="Disabled state"
            state=#disabled
            rows={3}
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextArea with Different Rows"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextArea
            label="Small Height (2 rows)"
            placeholder="Small height textarea"
            rows={2}
            className="w-full"
          />
          <TextArea
            label="Medium Height (4 rows)"
            placeholder="Medium height textarea"
            rows={4}
            className="w-full"
          />
          <TextArea
            label="Large Height (6 rows)"
            placeholder="Large height textarea"
            rows={6}
            className="w-full"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextArea with Labels"->React.string} </h2>
        <div className="space-y-4 max-w-md">
          <TextArea
            label="With Sublabel"
            sublabel="Additional information about this field"
            placeholder="With sublabel"
            rows={4}
            className="w-full"
          />
          <TextArea
            label="With Hint"
            hintText="This is a hint to help you fill this field"
            placeholder="With hint text"
            rows={4}
            className="w-full"
          />
          <TextArea
            label="Mandatory Field"
            mandatory={true}
            placeholder="This field is required"
            rows={4}
            className="w-full"
          />
          <TextArea
            label="With Info Tooltip"
            infoTooltip="This tooltip provides additional information about the field"
            placeholder="Hover over the info icon"
            rows={4}
            className="w-full"
          />
        </div>
      </div>

      <div className="border rounded p-4">
        <h2 className="text-xl font-semibold mb-4"> {"TextArea Use Cases"->React.string} </h2>
        <div className="space-y-6">
          <div className="border p-4 rounded-lg bg-gray-50">
            <h3 className="text-lg font-medium mb-2">{"Feedback Form"->React.string}</h3>
            <TextArea
              label="Share Your Feedback"
              placeholder="Please share your thoughts, suggestions, or concerns about our product..."
              value={feedbackValue}
              onChange={handleFeedbackChange}
              rows={5}
              className="w-full mb-2"
            />
            <div className="flex justify-between items-center">
              <div className="text-sm text-gray-600">
                {`${feedbackValue->Js.String2.length->Belt.Int.toString}/500 characters`->React.string}
              </div>
              <button 
                className={`px-4 py-2 rounded-md text-white font-medium ${feedbackValue->Js.String2.length > 0 ? "bg-blue-600 hover:bg-blue-700" : "bg-gray-300 cursor-not-allowed"}`}
                disabled={feedbackValue->Js.String2.length === 0}
                onClick={_ => Js.log("Submitting feedback...")}
              >
                {"Submit Feedback"->React.string}
              </button>
            </div>
          </div>
          
          <div className="border p-4 rounded-lg bg-gray-50">
            <h3 className="text-lg font-medium mb-2">{"User Profile Bio"->React.string}</h3>
            <TextArea
              label="About Me"
              placeholder="Tell us about yourself..."
              value={bioValue}
              onChange={handleBioChange}
              rows={4}
              className="w-full mb-2"
            />
            <div className="flex justify-between items-center">
              <div className="text-sm text-gray-600">
                {`${bioValue->Js.String2.length->Belt.Int.toString}/250 characters`->React.string}
              </div>
              <button 
                className={`px-4 py-2 rounded-md text-white font-medium ${bioValue->Js.String2.length > 0 && bioValue->Js.String2.length <= 250 ? "bg-blue-600 hover:bg-blue-700" : "bg-gray-300 cursor-not-allowed"}`}
                disabled={bioValue->Js.String2.length === 0 || bioValue->Js.String2.length > 250}
                onClick={_ => Js.log("Saving profile...")}
              >
                {"Save Profile"->React.string}
              </button>
            </div>
            {bioValue->Js.String2.length > 250 ? 
              <p className="text-sm text-red-500 mt-1">
                {"Bio exceeds the maximum character limit of 250."->React.string}
              </p> : React.null
            }
          </div>
        </div>
      </div>
    </div>
  }
}

// Export the main component
let default = TextAreaDemo.make 
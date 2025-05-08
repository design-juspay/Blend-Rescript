
open LucideIcons

module AlertDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Alert Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Alert Variants"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Alert
            heading="Primary Alert"
            description="This is a primary alert with important information."
            variant=#primary
          />
          <Alert
            heading="Success Alert"
            description="Your action was completed successfully."
            variant=#success
            icon={<Check size=16 />}
          />
          <Alert
            heading="Warning Alert"
            description="Please be aware of this important warning."
            variant=#warning
          />
          <Alert
            heading="Error Alert"
            description="An error occurred while processing your request."
            variant=#error
          />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Alert Styles"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <Alert
            heading="Fill Style"
            description="This alert uses the fill style."
            variant=#primary
            style=#fill
          />
          <Alert
            heading="Subtle Style"
            description="This alert uses the subtle style."
            variant=#primary
            style=#subtle
          />
          <Alert
            heading="No Fill Style"
            description="This alert uses the no fill style."
            variant=#primary
            style=#noFill
          />
        </div>
      </div>
    </div>
  }
}
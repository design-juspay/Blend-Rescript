
module SnackbarDemo = {
  @react.component
  let make = () => {
    let (showSnackbar, setShowSnackbar) = React.useState(_ => false)
    let (snackbarVariant, setSnackbarVariant) = React.useState(_ => #success)

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Snackbar Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Snackbar Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem
            buttonType=#primary
            text="Show Success Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #success)
              setShowSnackbar(_ => true)
            }}
          />
          <DesignSystem
            buttonType=#danger
            text="Show Error Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #error)
              setShowSnackbar(_ => true)
            }}
          />
          <DesignSystem
            buttonType=#secondary
            text="Show Info Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #info)
              setShowSnackbar(_ => true)
            }}
          />
          <DesignSystem
            buttonType=#secondary
            text="Show Warning Snackbar"
            onClick={_ => {
              setSnackbarVariant(_ => #warning)
              setShowSnackbar(_ => true)
            }}
          />
        </div>
      </div>
      {showSnackbar
        ? <Snackbar
            type_=snackbarVariant
            heading="Snackbar Heading"
            message="This is a detailed message explaining what happened"
            alertMessage="Optional alert message for additional context"
            showIcon=true
            autoClose=true
            position=#topLeft
            onClose={() => setShowSnackbar(_ => false)}
          />
        : React.null}
    </div>
  }
}
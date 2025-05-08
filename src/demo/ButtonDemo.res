open LucideIcons

module ButtonDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6"> {"Button Variants Demo"->React.string} </h1>
      // Basic button types
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button Typesss"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem
            buttonType=#primary text="Primary Button" onClick={_ => Js.log("Primary clicked")}
          />
          <DesignSystem
            buttonType=#secondary text="Secondary Button" onClick={_ => Js.log("Secondary clicked")}
          />
          <DesignSystem
            buttonType=#danger text="Danger Button" onClick={_ => Js.log("Danger clicked")}
          />
          <DesignSystem
            buttonType=#success text="Success Button" onClick={_ => Js.log("Success clicked")}
          />
        </div>
      </div>
      // Button sizes
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button Sizes"->React.string} </h2>
        <div className="flex flex-wrap items-center gap-3">
          <DesignSystem buttonType=#primary size=#sm text="Small Button" />
          <DesignSystem buttonType=#primary size=#md text="Medium Button" />
          <DesignSystem buttonType=#primary size=#lg text="Large Button" />
        </div>
      </div>
      // Button states
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button States"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem buttonType=#primary text="Enabled Button" />
          <DesignSystem buttonType=#primary text="Disabled Button" isDisabled=true />
          <DesignSystem buttonType=#primary text="Loading" isLoading=true />
        </div>
      </div>
      // Button subtypes
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button Subtypes"->React.string} </h2>
        <div className="flex flex-wrap items-center gap-3">
          <DesignSystem buttonType=#secondary subType=#default text="Default Button" />
          <DesignSystem buttonType=#secondary subType=#link text="Link Button" />
          <DesignSystem
            buttonType=#secondary
            subType=#iconOnly
            ariaLabel="Icon only button"
            leftIcon={<ThumbsUp size=18 />}
          />
        </div>
      </div>
      // Buttons with icons
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Buttons with Icons"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem buttonType=#primary text="Left Icon" leftIcon={<ChevronLeft size=18 />} />
          <DesignSystem
            buttonType=#primary text="Right Icon" rightIcon={<ChevronRight size=18 />}
          />
          <DesignSystem
            buttonType=#primary
            text="Both Icons"
            leftIcon={<ChevronLeft size=18 />}
            rightIcon={<ChevronRight size=18 />}
          />
        </div>
      </div>
      // Icon variants
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Icon Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <DesignSystem buttonType=#primary text="Download" leftIcon={<Download size=18 />} />
          <DesignSystem
            buttonType=#secondary text="Mail" leftIcon={<Mail size=18 color="#666" />}
          />
          <DesignSystem
            buttonType=#success subType=#iconOnly ariaLabel="Success" leftIcon={<Check size=18 />}
          />
        </div>
      </div>
      // Full width button
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Full Width Button"->React.string} </h2>
        <DesignSystem buttonType=#primary text="Full Width Button" fullWidth=true />
      </div>
      // Children prop example
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Button with Children"->React.string} </h2>
        <DesignSystem buttonType=#success>
          <div className="flex items-center">
            <Check size=18 className="mr-2" />
            <span> {"Custom Content"->React.string} </span>
          </div>
        </DesignSystem>
      </div>
    </div>
  }
}

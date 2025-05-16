// open LucideIcons

module TagDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Tag Variants Demo"->React.string} </h1>
      // Tag variants
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag variant=#noFill label="No Fill" />
          <Tag variant=#attentive label="Attentive" />
          <Tag variant=#subtle label="Subtle" />
        </div>
      </div>
      // Tag styles
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Styles"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag tagStyle=#rounded label="Vinit OG" color=#purple variant=#attentive />
          <Tag tagStyle=#rounded label="Rounded" />
        </div>
      </div>
      // Tag sizes
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Sizes"->React.string} </h2>
        <div className="flex flex-wrap items-center gap-3">
          <Tag size=#xs label="Extra Small" />
          <Tag size=#sm label="Small" />
          <Tag size=#md label="Medium" />
          <Tag size=#lg label="Large" />
        </div>
      </div>
      // Tag colors
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tag Colors"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag color=#neutral label="Neutral" />
          <Tag color=#primary label="Primary" />
          <Tag color=#success label="Success" />
          <Tag color=#error label="Error" />
          <Tag color=#warning label="Warning" />
          <Tag color=#purple label="Purple" />
        </div>
      </div>
      // Tags with slots
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Tags with Slots"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag label="Leading Icon" />
          <Tag label="Trailing Icon" />
          <Tag label="Both Slots" />
        </div>
      </div>
      // Split Tags
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Split Tags"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag.Split leftLabel="Left" rightLabel="Right" />
          <Tag.Split
            leftLabel="With"
            rightLabel="Icons"
            // leftSlot={<Check size=14 />}
            // rightSlot={<X size=14 />}
          />
          <Tag.Split color=#success leftLabel="Success" rightLabel="Tag" />
        </div>
      </div>
      // Combined variants
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Combined Variants"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <Tag
            variant=#attentive
            color=#success
            tagStyle=#rounded
            size=#lg
            label="Combined"
            // leadingSlot={<Check size=16 />}
          />
          <Tag
            variant=#subtle
            color=#error
            size=#sm
            label="Error"
            // trailingSlot={<X size=12 />}
          />
          <Tag.Split tagStyle=#rounded color=#primary size=#md leftLabel="Split" rightLabel="Tag" />
        </div>
      </div>
    </div>
  }
}

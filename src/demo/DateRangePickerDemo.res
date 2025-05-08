
open LucideIcons

module DateRangePickerDemo = {
  @react.component
  let make = () => {
    let today = Js.Date.make()
    let future = Js.Date.make()
    let _ = Js.Date.setDate(future, Js.Date.getDate(future) +. 7.0)

    let (dateRange, setDateRange) = React.useState((_): DateRangePicker.dateRange => {
      startDate: today,
      endDate: future,
    })

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"DateRangePicker Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic DateRangePicker"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker
            value=dateRange
            onChange={range => setDateRange(_ => range)}
            placeholder="Select date range"
          />
          <div className="text-sm text-gray-600">
            {`Selected range: ${Js.Date.toLocaleDateString(
                dateRange.startDate,
              )} - ${Js.Date.toLocaleDateString(dateRange.endDate)}`->React.string}
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"DateRangePicker Variants"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <div>
            <div className="mb-2"> {"Primary Variant"->React.string} </div>
            <DateRangePicker variant=#primary placeholder="Primary variant" />
          </div>
          <div>
            <div className="mb-2"> {"Secondary Variant"->React.string} </div>
            <DateRangePicker variant=#secondary placeholder="Secondary variant" />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Time Picker"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker showTimePicker=true placeholder="Select date and time range" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Presets"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker showPresets=true placeholder="Select from presets" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Disabled DateRangePicker"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker isDisabled=true placeholder="Disabled picker" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Custom Icon"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker icon={<Check size=16 />} placeholder="Custom calendar icon" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"DateRangePicker with Date Constraints"->React.string}
        </h2>
        <div className="flex flex-col gap-4">
          <div>
            <div className="mb-2"> {"Disable Future Dates"->React.string} </div>
            <DateRangePicker disableFutureDates=true placeholder="No future dates" />
          </div>
          <div>
            <div className="mb-2"> {"Disable Past Dates"->React.string} </div>
            <DateRangePicker disablePastDates=true placeholder="No past dates" />
          </div>
          <div>
            <div className="mb-2"> {"Min/Max Date Range"->React.string} </div>
            <DateRangePicker
              minDate={Js.Date.makeWithYMD(~year=2023.0, ~month=0.0, ~date=1.0, ())}
              maxDate={Js.Date.makeWithYMD(~year=2023.0, ~month=11.0, ~date=31.0, ())}
              placeholder="Limited to 2023"
            />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Single Date Selection"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker allowSingleDateSelection=true placeholder="Select one date" />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Custom Format"->React.string} </h2>
        <div className="flex flex-col gap-4">
          <DateRangePicker dateFormat="MM/dd/yyyy" placeholder="MM/DD/YYYY format" />
        </div>
      </div>
    </div>
  }
}
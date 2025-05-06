// DateRangePicker component bindings

// Date range preset options
type dateRangePreset = [
  | #custom
  | #today
  | #yesterday
  | #last_1_hour
  | #last_6_hours
  | #last_7_days
]

// DateRangePicker variants
type dateRangePickerVariant = [
  | #primary
  | #secondary
]

// DateRange type definition
type dateRange = {
  startDate: Js.Date.t,
  endDate: Js.Date.t,
  showTimePicker?: bool,
}

// DateRangePicker props
type dateRangePickerProps = {
  value?: dateRange,
  onChange?: dateRange => unit,
  variant?: dateRangePickerVariant,
  showTimePicker?: bool,
  showPresets?: bool,
  placeholder?: string,
  isDisabled?: bool,
  className?: string,
  icon?: React.element,
  minDate?: Js.Date.t,
  maxDate?: Js.Date.t,
  dateFormat?: string,
  ariaLabel?: string,
  allowSingleDateSelection?: bool,
  disableFutureDates?: bool,
  disablePastDates?: bool,
  triggerElement?: React.element,
}

// DateRangePicker component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~value: dateRange=?,
  ~onChange: dateRange => unit=?,
  ~variant: dateRangePickerVariant=?,
  ~showTimePicker: bool=?,
  ~showPresets: bool=?,
  ~placeholder: string=?,
  ~isDisabled: bool=?,
  ~className: string=?,
  ~icon: React.element=?,
  ~minDate: Js.Date.t=?,
  ~maxDate: Js.Date.t=?,
  ~dateFormat: string=?,
  ~ariaLabel: string=?,
  ~allowSingleDateSelection: bool=?,
  ~disableFutureDates: bool=?,
  ~disablePastDates: bool=?,
  ~triggerElement: React.element=?,
) => React.element = "DateRangePicker" 
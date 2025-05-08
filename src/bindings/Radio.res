 // Define radio size variants
type radioSize = [
  | #sm
  | #md
]

// Radio component props
type radioProps = {
  value: string,
  isChecked?: bool,
  isDisabled?: bool,
  size?: radioSize,
  children: React.element,
  subtext?: string,
  rightSlot?: React.element,
  className?: string,
  name?: string,
  onChange?: ReactEvent.Form.t => unit,
}

// RadioGroup props
type radioGroupProps = {
  label?: string,
  name: string,
  defaultValue?: string,
  value?: string,
  children: React.element,
  onChange?: {"name": string, "value": string} => unit,
  className?: string,
  isDisabled?: bool,
}

// Binding for the Radio component
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~value: string,
  ~isChecked: bool=?,
  ~isDisabled: bool=?,
  ~size: radioSize=?,
  ~children: React.element,
  ~subtext: string=?,
  ~rightSlot: React.element=?,
  ~className: string=?,
  ~name: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
) => React.element = "Radio"

// Module for RadioGroup
module RadioGroup = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~label: string=?,
    ~name: string,
    ~defaultValue: string=?,
    ~value: string=?,
    ~children: React.element,
    ~onChange: {"name": string, "value": string} => unit=?,
    ~className: string=?,
    ~isDisabled: bool=?,
  ) => React.element = "RadioGroup"
}
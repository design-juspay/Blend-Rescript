// Type definitions
type radioSize = [#sm | #md]

// Radio binding for the design system
@module("blend-v1") @react.component
external make: (
  ~id: string=?,
  ~value: string,
  ~checked: bool=?,
  ~defaultChecked: bool=?,
  ~onChange: bool => unit=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~error: bool=?,
  ~size: radioSize=?,
  ~children: React.element=?,
  ~subtext: string=?,
  ~slot: React.element=?,
  ~name: string,
  ~className: string=?,
) => React.element = "Radio"

// RadioGroup binding
module Group = {
  @module("blend-v1") @react.component
  external make: (
    ~id: string=?,
    ~label: string=?,
    ~name: string,
    ~defaultValue: string=?,
    ~value: string=?,
    ~children: React.element,
    ~onChange: string => unit=?,
    ~disabled: bool=?,
    ~className: string=?,
  ) => React.element = "RadioGroup"
}

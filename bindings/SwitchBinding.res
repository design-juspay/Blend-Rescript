// Type definitions
type switchSize = [#sm | #md]

// Switch binding for the design system
@module("blend-v1") @react.component
external make: (
  ~id: string=?,
  ~checked: bool=?,
  ~defaultChecked: bool=?,
  ~disabled: bool=?,
  ~required: bool=?,
  ~error: bool=?,
  ~size: switchSize=?,
  ~onChange: bool => unit=?,
  ~value: string=?,
  ~children: string=?,
  ~subtext: string=?,
  ~slot: React.element=?,
  ~name: string=?,
  ~className: string=?,
) => React.element = "Switch"

// SwitchGroup binding
module Group = {
  @module("blend-v1") @react.component
  external make: (
    ~id: string=?,
    ~label: string=?,
    ~name: string=?,
    ~children: React.element,
    ~disabled: bool=?,
    ~value: array<string>=?,
    ~defaultValue: array<string>=?,
    ~onChange: array<string> => unit=?,
    ~className: string=?,
  ) => React.element = "SwitchGroup"
}

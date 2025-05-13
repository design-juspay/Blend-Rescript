 // ReScript bindings for the UnitInput component
module Types = {
  // Reuse TextInput types for size and state
  type textInputSize = [
    | #small
    | #medium
    | #large
    | #default
  ]

  type textInputState = [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #success
    | #disabled
  ]

  type unitPosition = [
    | #prefix
    | #suffix
  ]
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~hintText: string=?,
  ~label: string=?,
  ~mandatory: bool=?,
  ~placeholder: string=?,
  ~size: [
    | #small
    | #medium
    | #large
    | #default
  ]=?,
  ~rightSlot: React.element=?,
  ~leftSlot: React.element=?,
  ~state: [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #success
    | #disabled
  ]=?,
  ~sublabel: string=?,
  ~unitPosition: [
    | #prefix
    | #suffix
  ]=?,
  ~unitText: string=?,
  ~value: string=?,
  ~infoTooltip: string=?,
  ~successMessage: string=?,
  ~errorMessage: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~onBlur: ReactEvent.Focus.t => unit=?,
  ~onFocus: ReactEvent.Focus.t => unit=?,
  ~className: string=?,
  ~id: string=?,
) => React.element = "UnitInput"
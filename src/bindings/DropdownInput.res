// ReScript bindings for the DropdownInput component
module Types = {
  type dropdownInputSize = [
    | #md
    | #lg
  ]

  type dropdownInputState = [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #disabled
    | #success
  ]

  type dropdownPosition = [
    | #left
    | #right
  ]

  type dropdownOption = {
    label: string,
    value: string,
  }
}

// Define the DropdownInput component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~hintText: string=?,
  ~label: string=?,
  ~leftSlot: React.element=?,
  ~mandatory: bool=?,
  ~placeholder: string=?,
  ~rightSlot: React.element=?,
  ~size: [
    | #md
    | #lg
  ]=?,
  ~state: [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #disabled
    | #success
  ]=?,
  ~sublabel: string=?,
  ~value: string=?,
  ~inputValue: string=?,
  ~infoTooltip: string=?,
  ~successMessage: string=?,
  ~errorMessage: string=?,
  ~options: array<Types.dropdownOption>,
  ~onOptionSelect: Types.dropdownOption => unit=?,
  ~onChange: string => unit=?,
  ~showSelectedOptionInInput: bool=?,
  ~dropdownWidth: string=?,
  ~dropdownPlaceholder: string=?,
  ~dropdownPosition: [
    | #left
    | #right
  ]=?,
  ~className: string=?,
  ~id: string=?,
) => React.element = "DropdownInput" 
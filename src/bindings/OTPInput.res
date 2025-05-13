// ReScript bindings for the OTPInput component
module Types = {
  type otpDigits = [
    | #"4"
    | #"6"
  ]

  type direction = [
    | #up
    | #down
    | #left
    | #right
  ]

  type otpKeyboardKey = [
    | #ArrowLeft
    | #ArrowRight
    | #Backspace
  ]

  // Reuse TextInput types for state
  type textInputState = [
    | #default
    | #hover
    | #focused
    | #filled
    | #error
    | #success
    | #disabled
  ]
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~digits: [#"4" | #"6"]=?,
  ~hintText: string=?,
  ~label: string=?,
  ~mandatory: bool=?,
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
  ~value: string=?,
  ~onChange: string => unit=?,
  ~infoTooltip: string=?,
  ~successMessage: string=?,
  ~errorMessage: string=?,
  ~className: string=?,
  ~id: string=?,
) => React.element = "OTPInput" 
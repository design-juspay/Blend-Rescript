type placement = [
  | #top
  | #topStart
  | #topEnd
  | #bottom
  | #bottomStart
  | #bottomEnd
  | #left
  | #leftStart
  | #leftEnd
  | #right
  | #rightStart
  | #rightEnd
]

type alignment = [
  | #start
  | #center
  | #end
]

type buttonType = [
  | #primary
  | #secondary
  | #tertiary
]

type buttonSubType = [
  | #default
  | #danger
  | #success
]

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element,
  ~trigger: React.element,
  ~placement: placement=?,
  ~alignment: alignment=?,
  ~className: string=?,
  ~closeOnEscape: bool=?,
  ~closeOnOutsideClick: bool=?,
  ~open_: bool=?,
  ~onOpenChange: bool => unit=?,
  ~offset: int=?,
  ~collisionBoundaryRef: ReactDOM.Ref.t=?,
  ~collisionPadding: int=?,
  ~heading: string=?,
  ~description: string=?,
  ~primaryButtonType: buttonType=?,
  ~secondaryButtonType: buttonType=?,
  ~showCloseButton: bool=?,
  ~primaryButtonText: string=?,
  ~secondaryButtonText: string=?,
  ~primaryButtonDisabled: bool=?,
  ~secondaryButtonDisabled: bool=?,
  ~onPrimaryButtonClick: unit => unit=?,
  ~onSecondaryButtonClick: unit => unit=?,
  ~primaryButtonSubType: buttonSubType=?,
  ~secondaryButtonSubType: buttonSubType=?,
) => React.element = "Popover"

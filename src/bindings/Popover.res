// ReScript bindings for the Popover component
module Types = {
  type placement = [
    | #top
    | #"top-start"
    | #"top-end"
    | #bottom
    | #"bottom-start"
    | #"bottom-end"
    | #left
    | #"left-start"
    | #"left-end"
    | #right
    | #"right-start"
    | #"right-end"
  ]

  type alignment = [
    | #start
    | #center
    | #end
  ]

  // Use the existing Button types
  type buttonType = [
    | #primary
    | #secondary
    | #danger
    | #success
  ]

  type buttonSubType = [
    | #default
    | #iconOnly
    | #link
  ]
}

// Define the Popover component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~children: React.element,
  ~trigger: React.element,
  ~placement: [
    | #top
    | #"top-start"
    | #"top-end"
    | #bottom
    | #"bottom-start"
    | #"bottom-end"
    | #left
    | #"left-start"
    | #"left-end"
    | #right
    | #"right-start"
    | #"right-end"
  ]=?,
  ~alignment: [
    | #start
    | #center
    | #end
  ]=?,
  ~className: string=?,
  ~closeOnEscape: bool=?,
  ~closeOnOutsideClick: bool=?,
  ~open_: bool=?,
  ~onOpenChange: bool => unit=?,
  ~offset: int=?,
  ~collisionPadding: int=?,
  ~heading: string=?,
  ~description: string=?,
  ~primaryButtonType: [
    | #primary
    | #secondary
    | #danger
    | #success
  ]=?,
  ~secondaryButtonType: [
    | #primary
    | #secondary
    | #danger
    | #success
  ]=?,
  ~showCloseButton: bool=?,
  ~primaryButtonText: string=?,
  ~secondaryButtonText: string=?,
  ~primaryButtonDisabled: bool=?,
  ~secondaryButtonDisabled: bool=?,
  ~onPrimaryButtonClick: unit => unit=?,
  ~onSecondaryButtonClick: unit => unit=?,
  ~primaryButtonSubType: [
    | #default
    | #iconOnly
    | #link
  ]=?,
  ~secondaryButtonSubType: [
    | #default
    | #iconOnly
    | #link
  ]=?,
) => React.element = "Popover" 
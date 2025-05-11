// Based on the type definitions from Modal component
type buttonType = [
  | #primary
  | #secondary
  | #danger
  | #success
]

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~isOpen: bool,
  ~onClose: unit => unit,
  ~title: string=?,
  ~subtitle: string=?,
  ~children: React.element,
  ~primaryButtonText: string=?,
  ~secondaryButtonText: string=?,
  ~onPrimaryButtonClick: unit => unit=?,
  ~onSecondaryButtonClick: unit => unit=?,
  ~primaryButtonDisabled: bool=?,
  ~secondaryButtonDisabled: bool=?,
  ~className: string=?,
  ~showCloseButton: bool=?,
  ~showHeader: bool=?,
  ~showFooter: bool=?,
  ~showPrimaryButton: bool=?,
  ~showSecondaryButton: bool=?,
  ~closeOnBackdropClick: bool=?,
  ~primaryButtonType: buttonType=?,
  ~secondaryButtonType: buttonType=?,
  ~customHeader: React.element=?,
  ~customFooter: React.element=?,
  ~headerRightSlot: React.element=?,
) => React.element = "Modal"

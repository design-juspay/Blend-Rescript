type buttonGroupSize = [
  | #sm
  | #md
  | #lg
]

type buttonGroupMode = [
  | #singlePrimary
  | #allSecondary
  | #noTransform
]

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~size: buttonGroupSize=?,
  ~isStacked: bool=?,
  ~mode: buttonGroupMode=?,
  ~className: string=?,
  ~children: React.element,
) => React.element = "ButtonGroup" 
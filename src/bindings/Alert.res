type alertVariant = [
  | #primary
  | #success
  | #warning
  | #error
  | #purple
  | #orange
  | #neutral
]

type alertStyle = [
  | #fill
  | #subtle
  | #noFill
]

type alertActionPlacement = [
  | #bottom
  | #right
]

type alertAction = {
  label: string,
  onClick: unit => unit,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~heading: string,
  ~description: string,
  ~variant: alertVariant=?,
  ~style: alertStyle=?,
  ~primaryAction: alertAction=?,
  ~secondaryAction: alertAction=?,
  ~onClose: unit => unit=?,
  ~icon: React.element=?,
  ~actionPlacement: alertActionPlacement=?,
) => React.element = "Alert" 
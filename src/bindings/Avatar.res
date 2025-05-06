 type avatarSize = [
  | #sm
  | #regular
  | #md
  | #lg
  | #xl
]

type avatarShape = [
  | #circular
  | #rounded
]

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~src: string=?,
  ~alt: string=?,
  ~fallback: string=?,
  ~size: avatarSize=?,
  ~shape: avatarShape=?,
  ~online: bool=?,
  ~className: string=?,
) => React.element = "Avatar"
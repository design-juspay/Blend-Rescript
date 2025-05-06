 // Import the Avatar types for reuse
open Avatar

// Define the avatarData type which extends Avatar props and requires an id
type avatarData = {
  id: string,
  src: option<string>,
  alt: option<string>,
  fallback: option<string>,
  size: option<avatarSize>,
  shape: option<avatarShape>,
  online: option<bool>,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~avatars: array<avatarData>,
  ~maxCount: int=?,
  ~size: avatarSize=?,
  ~className: string=?,
  ~selectedAvatarIds: array<string>=?,
  ~onSelectionChange: (array<string>) => unit=?,
) => React.element = "AvatarGroup"
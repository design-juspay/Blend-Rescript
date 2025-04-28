type breadcrumbVariant = [#default | #truncated]

type breadcrumbItemInternalProps = {
  label?: string,
  href: string,
  onClick: (unit => unit),
  leftSlot?: React.element,
  rightSlot?: React.element,
  className?: string,
  isLast?: bool,
  isActive?: bool,
}

@module("@vinitjuspay/design-system") @react.component
external make: (
  ~variant: breadcrumbVariant=?,
  ~items: array<breadcrumbItemInternalProps>,
  ~className: string=?,
) => React.element = "Breadcrumb"

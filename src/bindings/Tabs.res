// Type definitions
type tabsVariant = [#boxed | #floating | #underline]
type tabsSize = [#md | #lg]

// New bindings for the design system tabs
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~defaultValue: string=?,
  ~value: string=?,
  ~onValueChange: string => unit=?,
  ~variant: tabsVariant=?,
  ~size: tabsSize=?,
  ~className: string=?,
  ~children: React.element,
) => React.element = "Tabs"

module List = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~variant: tabsVariant=?,
    ~size: tabsSize=?,
    ~expanded: bool=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "TabsList"
}

module Trigger = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~value: string,
    ~variant: tabsVariant=?,
    ~size: tabsSize=?,
    ~leftSlot: React.element=?,
    ~rightSlot: React.element=?,
    ~disabled: bool=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "TabsTrigger"
}

module Content = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~value: string,
    ~forceMount: bool=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "TabsContent"
}

// Legacy exports - retained for backward compatibility
module Root = {
  @module("@vinitjuspay/design-system") @react.component
  external make: (
    ~defaultValue: string=?,
    ~value: string=?,
    ~onValueChange: string => unit=?,
    ~variant: tabsVariant=?,
    ~size: tabsSize=?,
    ~className: string=?,
    ~children: React.element,
  ) => React.element = "Tabs"
} 
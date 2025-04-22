// Bindings for Tabs component from @vinitjuspay/design-system
// This component internally uses Radix UI

// Type definitions
type tabsVariant = [#boxed | #floating | #underline]
type tabsSize = [#md | #lg]

// Legacy Radix direct bindings - kept for backward compatibility
// module RadixTabs = {
//   module Root = {
//     @module("@radix-ui/react-tabs") @react.component
//     external make: (
//       ~asChild: bool=?,
//       ~defaultValue: string=?,
//       ~value: string=?,
//       ~onValueChange: string => unit=?,
//       ~orientation: [#horizontal | #vertical]=?,
//       ~dir: [#ltr | #rtl]=?,
//       ~activationMode: [#automatic | #manual]=?,
//       ~className: string=?,
//       ~children: React.element,
//     ) => React.element = "Root"
//   }

//   module List = {
//     @module("@radix-ui/react-tabs") @react.component
//     external make: (
//       ~asChild: bool=?,
//       ~loop: bool=?,
//       ~className: string=?,
//       ~children: React.element,
//     ) => React.element = "List"
//   }

//   module Trigger = {
//     @module("@radix-ui/react-tabs") @react.component
//     external make: (
//       ~asChild: bool=?,
//       ~value: string,
//       ~disabled: bool=?,
//       ~className: string=?,
//       ~children: React.element,
//     ) => React.element = "Trigger"
//   }

//   module Content = {
//     @module("@radix-ui/react-tabs") @react.component
//     external make: (
//       ~asChild: bool=?,
//       ~value: string,
//       ~forceMount: bool=?,
//       ~className: string=?,
//       ~children: React.element,
//     ) => React.element = "Content"
//   }
// }



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
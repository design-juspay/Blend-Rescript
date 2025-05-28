type accordionType = [#border | #noborder]

type accordionChevronPosition = [#left | #right]

@module("blend-v1") @react.component
external make: (
  ~children: React.element,
  ~accordionType: accordionType=?,
  ~defaultValue: 'a=?,
  ~value: 'a=?,
  ~isCollapsible: bool=?,
  ~isMultiple: bool=?,
  ~onValueChange: 'a => unit=?,
  ~className: string=?,
) => React.element = "Accordion"

module Item = {
  @module("blend-v1") @react.component
  external make: (
    ~value: string,
    ~title: string,
    ~subtext: string=?,
    ~leftSlot: React.element=?,
    ~rightSlot: React.element=?,
    ~subtextSlot: React.element=?,
    ~children: React.element,
    ~isDisabled: bool=?,
    ~className: string=?,
    ~chevronPosition: accordionChevronPosition=?,
  ) => React.element = "AccordionItem"
}

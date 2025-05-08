// StatCard variants
type statCardVariant = [
  | #line
  | #progress_bar
  | #bar
  | #number
]

// Change type for indicating increase/decrease
type changeType = [
  | #increase
  | #decrease
]

// Chart data point structure
type chartDataPoint = {
  value: float,
  label: string,
}

// Structure for representing change values
type statCardChange = {
  value: float,
  type_: changeType,
}

// StatCard component props
type statCardProps = {
  title: string,
  value: string,
  change?: statCardChange,
  subtitle?: string,
  variant: statCardVariant,
  chartData?: array<chartDataPoint>,
  progressValue?: float,
  className?: string,
  titleIcon?: React.element,
  actionIcon?: React.element,
  helpIconText?: string,
}

// StatCard component binding
@module("@vinitjuspay/design-system") @react.component
external make: (
  ~title: string,
  ~value: string,
  ~change: statCardChange=?,
  ~subtitle: string=?,
  ~variant: statCardVariant,
  ~chartData: array<chartDataPoint>=?,
  ~progressValue: float=?,
  ~className: string=?,
  ~titleIcon: React.element=?,
  ~actionIcon: React.element=?,
  ~helpIconText: string=?,
) => React.element = "StatCard"

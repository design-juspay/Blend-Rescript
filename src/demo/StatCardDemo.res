open LucideIcons

module StatCardDemo = {
  @react.component
  let make = () => {
    // Sample chart data for line variant
    let lineChartData = [
      {StatCard.value: 10.0, label: "Jan"},
      {value: 25.0, label: "Feb"},
      {value: 15.0, label: "Mar"},
      {value: 30.0, label: "Apr"},
      {value: 22.0, label: "May"},
      {value: 40.0, label: "Jun"},
    ]

    // Sample chart data for bar variant
    let barChartData = [
      {StatCard.value: 15.0, label: "Mon"},
      {value: 25.0, label: "Tue"},
      {value: 18.0, label: "Wed"},
      {value: 30.0, label: "Thu"},
      {value: 22.0, label: "Fri"},
    ]

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"StatCard Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Line Variant"->React.string} </h2>
        <div className="flex flex-wrap gap-4">
          <div className="w-64">
            <StatCard
              title="Revenue"
              value="$12,500"
              variant=#line
              subtitle="Monthly revenue"
              chartData=lineChartData
              change={
                type_: #increase,
                value: 12.5,
              }
            />
          </div>
          <div className="w-64">
            <StatCard
              title="Users"
              value="1,250"
              variant=#line
              subtitle="Active users"
              chartData=lineChartData
              change={
                type_: #decrease,
                value: 5.3,
              }
              titleIcon={<Users size=16 />}
            />
          </div>
        </div>
      </div>

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Progress Bar Variant"->React.string} </h2>
        <div className="flex flex-wrap gap-4">
          <div className="w-64">
            <StatCard
              title="Project Completion"
              value="75%"
              variant=#progress_bar
              progressValue=75.0
              subtitle="3 weeks remaining"
              change={
                type_: #increase,
                value: 15.0,
              }
              titleIcon={<Home size=16 />}
            />
          </div>
          <div className="w-64">
            <StatCard
              title="Tasks Completed"
              value="48%"
              variant=#progress_bar
              progressValue=48.0
              subtitle="12 of 25 tasks"
              titleIcon={<Home size=16 />}
            />
          </div>
        </div>
      </div>

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Bar Variant"->React.string} </h2>
        <div className="flex flex-wrap gap-4">
          <div className="w-64">
            <StatCard
              title="Weekly Sales"
              value="$8,450"
              variant=#bar
              chartData=barChartData
              subtitle="This week's sales"
              change={
                type_: #increase,
                value: 23.1,
              }
              titleIcon={<BarChart size=16 />}
              actionIcon={<Home size=16 />}
            />
          </div>
          <div className="w-64">
            <StatCard
              title="Website Visits"
              value="24,350"
              variant=#bar
              chartData=barChartData
              subtitle="Unique visitors"
              change={
                type_: #decrease,
                value: 8.4,
              }
              titleIcon={<Home size=16 />}
              helpIconText="Total unique website visits in the current period"
            />
          </div>
        </div>
      </div>

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Number Variant"->React.string} </h2>
        <div className="flex flex-wrap gap-4">
          <div className="w-64">
            <StatCard
              title="Conversions"
              value="3.2%"
              variant=#number
              subtitle="From all visits"
              change={
                type_: #increase,
                value: 0.8,
              }
              titleIcon={<Home size=16 />}
            />
          </div>
          <div className="w-64">
            <StatCard
              title="New Customers"
              value="85"
              variant=#number
              subtitle="This month"
              change={
                type_: #decrease,
                value: 12.2,
              }
              titleIcon={<User size=16 />}
            />
          </div>
        </div>
      </div>
    </div>
  }
} 
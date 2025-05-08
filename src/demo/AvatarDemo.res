module AvatarDemo = {
  @react.component
  let make = () => {
    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Avatar Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Avatar Sizes"->React.string} </h2>
        <div className="flex items-center gap-6">
          <div className="flex flex-col items-center">
            <Avatar size=#sm fallback="SM" />
            <span className="mt-2 text-sm"> {"Small"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#regular fallback="RE" />
            <span className="mt-2 text-sm"> {"Regular"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#md fallback="MD" />
            <span className="mt-2 text-sm"> {"Medium"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#lg fallback="LG" />
            <span className="mt-2 text-sm"> {"Large"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar size=#xl fallback="XL" />
            <span className="mt-2 text-sm"> {"Extra Large"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Avatar Shapes"->React.string} </h2>
        <div className="flex items-center gap-8">
          <div className="flex flex-col items-center">
            <Avatar shape=#circular fallback="CR" size=#lg />
            <span className="mt-2 text-sm"> {"Circular"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar shape=#rounded fallback="RO" size=#lg />
            <span className="mt-2 text-sm"> {"Rounded"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4">
          {"Avatar with Image vs Fallback"->React.string}
        </h2>
        <div className="flex items-center gap-8">
          <div className="flex flex-col items-center">
            <Avatar src="https://i.pravatar.cc/150?img=1" alt="User avatar" size=#lg />
            <span className="mt-2 text-sm"> {"With Image"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar fallback="JD" size=#lg />
            <span className="mt-2 text-sm"> {"With Fallback"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Online Status"->React.string} </h2>
        <div className="flex items-center gap-8">
          <div className="flex flex-col items-center">
            <Avatar src="https://i.pravatar.cc/150?img=2" alt="Online user" size=#lg online=true />
            <span className="mt-2 text-sm"> {"Online"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar
              src="https://i.pravatar.cc/150?img=3" alt="Offline user" size=#lg online=false
            />
            <span className="mt-2 text-sm"> {"Offline"->React.string} </span>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Comprehensive Examples"->React.string} </h2>
        <div className="grid grid-cols-3 gap-8">
          <div className="flex flex-col items-center">
            <Avatar
              src="https://i.pravatar.cc/150?img=4"
              alt="User 1"
              size=#md
              shape=#circular
              online=true
            />
            <span className="mt-2 text-sm"> {"User 1"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar fallback="AB" size=#md shape=#circular online=true />
            <span className="mt-2 text-sm"> {"User 2"->React.string} </span>
          </div>
          <div className="flex flex-col items-center">
            <Avatar
              src="https://i.pravatar.cc/150?img=6"
              alt="User 3"
              size=#md
              shape=#rounded
              online=false
            />
            <span className="mt-2 text-sm"> {"User 3"->React.string} </span>
          </div>
        </div>
      </div>
    </div>
  }
}
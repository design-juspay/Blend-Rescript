open AvatarGroup

module AvatarGroupDemo = {
  @react.component
  let make = () => {
    // Sample avatar data for demos
    let avatarData = [
      {
        id: "1",
        src: Some("https://i.pravatar.cc/150?img=1"),
        alt: Some("User 1"),
        fallback: Some("U1"),
        size: None,
        shape: None,
        online: Some(true),
      },
      {
        id: "2",
        src: Some("https://i.pravatar.cc/150?img=2"),
        alt: Some("User 2"),
        fallback: Some("U2"),
        size: None,
        shape: None,
        online: Some(false),
      },
      {
        id: "3",
        src: Some("https://i.pravatar.cc/150?img=3"),
        alt: Some("User 3"),
        fallback: Some("U3"),
        size: None,
        shape: None,
        online: Some(true),
      },
      {
        id: "4",
        src: None,
        alt: Some("User 4"),
        fallback: Some("U4"),
        size: None,
        shape: None,
        online: None,
      },
      {
        id: "5",
        src: Some("https://i.pravatar.cc/150?img=5"),
        alt: Some("User 5"),
        fallback: Some("U5"),
        size: None,
        shape: None,
        online: None,
      },
      {
        id: "6",
        src: Some("https://i.pravatar.cc/150?img=6"),
        alt: Some("User 6"),
        fallback: Some("U6"),
        size: None,
        shape: None,
        online: None,
      },
    ]

    // State for selected avatars
    let (selectedAvatarIds, setSelectedAvatarIds) = React.useState(_ => [])

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Avatar Group Demo"->React.string} </h1>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Avatar Group"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <AvatarGroup avatars={avatarData} />
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Avatar Group Sizes"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Size: small"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#sm />
          </div>
          <div>
            <div className="mb-2"> {"Size: regular"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#regular />
          </div>
          <div>
            <div className="mb-2"> {"Size: medium"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#md />
          </div>
          <div>
            <div className="mb-2"> {"Size: large"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#lg />
          </div>
          <div>
            <div className="mb-2"> {"Size: extra large"->React.string} </div>
            <AvatarGroup avatars={avatarData} size=#xl />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Max Count Variations"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Max Count: 3"->React.string} </div>
            <AvatarGroup avatars={avatarData} maxCount=3 />
          </div>
          <div>
            <div className="mb-2"> {"Max Count: 4"->React.string} </div>
            <AvatarGroup avatars={avatarData} maxCount=4 />
          </div>
          <div>
            <div className="mb-2"> {"Max Count: 5"->React.string} </div>
            <AvatarGroup avatars={avatarData} maxCount=5 />
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Selection Functionality"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Selectable Avatars"->React.string} </div>
            <AvatarGroup
              avatars={avatarData}
              selectedAvatarIds={selectedAvatarIds}
              onSelectionChange={ids => setSelectedAvatarIds(_ => ids)}
            />
            <div className="mt-2">
              {`Selected IDs: ${selectedAvatarIds->Js.Array2.joinWith(", ")}`->React.string}
            </div>
          </div>
        </div>
      </div>
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Edge Cases"->React.string} </h2>
        <div className="flex flex-col gap-6">
          <div>
            <div className="mb-2"> {"Empty Avatar Array"->React.string} </div>
            <AvatarGroup avatars={[]} />
            <div className="mt-2 text-gray-500 italic">
              {"No avatars to display"->React.string}
            </div>
          </div>
          <div>
            <div className="mb-2"> {"Avatars with Fallbacks Only"->React.string} </div>
            <AvatarGroup
              avatars={[
                {
                  id: "1",
                  src: None,
                  alt: Some("User 1"),
                  fallback: Some("U1"),
                  size: None,
                  shape: None,
                  online: None,
                },
                {
                  id: "2",
                  src: None,
                  alt: Some("User 2"),
                  fallback: Some("U2"),
                  size: None,
                  shape: None,
                  online: None,
                },
                {
                  id: "3",
                  src: None,
                  alt: Some("User 3"),
                  fallback: Some("U3"),
                  size: None,
                  shape: None,
                  online: None,
                },
              ]}
            />
          </div>
        </div>
      </div>
    </div>
  }
}
open LucideIcons

module ModalDemo = {
  @react.component
  let make = () => {
    let (isModalOpen, setIsModalOpen) = React.useState(_ => false)
    let (isCustomHeaderModalOpen, setIsCustomHeaderModalOpen) = React.useState(_ => false)
    let (isCustomFooterModalOpen, setIsCustomFooterModalOpen) = React.useState(_ => false)

    <div>
      <h1 className="text-2xl font-bold mb-6 mt-12"> {"Modal Demo"->React.string} </h1>
      
      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Basic Modal"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <button 
            className="px-4 py-2 bg-blue-500 text-white rounded"
            onClick={_ => setIsModalOpen(_ => true)}
          >
            {"Open Basic Modal"->React.string}
          </button>
          
          <Modal
            isOpen=isModalOpen
            onClose={() => setIsModalOpen(_ => false)}
            title="Basic Modal Title"
            subtitle="This is a subtitle for the modal"
            primaryButtonText="Confirm"
            secondaryButtonText="Cancel"
            onPrimaryButtonClick={() => {
              Js.log("Primary button clicked")
              setIsModalOpen(_ => false)
            }}
            onSecondaryButtonClick={() => {
              Js.log("Secondary button clicked")
              setIsModalOpen(_ => false)
            }}
          >
            <div className="p-4">
              {"This is the content of the modal. You can put any React element here."->React.string}
            </div>
          </Modal>
        </div>
      </div>

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Modal with Custom Header"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <button 
            className="px-4 py-2 bg-blue-500 text-white rounded"
            onClick={_ => setIsCustomHeaderModalOpen(_ => true)}
          >
            {"Open Modal with Custom Header"->React.string}
          </button>
          
          <Modal
            isOpen=isCustomHeaderModalOpen
            onClose={() => setIsCustomHeaderModalOpen(_ => false)}
            customHeader={
              <div className="p-4 bg-blue-100 flex justify-between items-center">
                <h3 className="text-lg font-bold text-blue-800"> {"Custom Header"->React.string} </h3>
                <X 
                  size=20 
                  onClick={_ => setIsCustomHeaderModalOpen(_ => false)}
                  className="cursor-pointer"
                />
              </div>
            }
            primaryButtonText="Confirm"
            secondaryButtonText="Cancel"
            primaryButtonType=#success
            secondaryButtonType=#danger
          >
            <div className="p-4">
              {"This modal has a custom header component."->React.string}
            </div>
          </Modal>
        </div>
      </div>

      <div className="mb-8">
        <h2 className="text-xl font-semibold mb-4"> {"Modal with Custom Footer"->React.string} </h2>
        <div className="flex flex-wrap gap-3">
          <button 
            className="px-4 py-2 bg-blue-500 text-white rounded"
            onClick={_ => setIsCustomFooterModalOpen(_ => true)}
          >
            {"Open Modal with Custom Footer"->React.string}
          </button>
          
          <Modal
            isOpen=isCustomFooterModalOpen
            onClose={() => setIsCustomFooterModalOpen(_ => false)}
            title="Custom Footer Modal"
            customFooter={
              <div className="p-4 bg-gray-100 flex justify-end gap-3">
                <button 
                  className="px-4 py-2 bg-red-500 text-white rounded"
                  onClick={_ => setIsCustomFooterModalOpen(_ => false)}
                >
                  {"Decline"->React.string}
                </button>
                <button 
                  className="px-4 py-2 bg-green-500 text-white rounded"
                  onClick={_ => {
                    Js.log("Custom action")
                    setIsCustomFooterModalOpen(_ => false)
                  }}
                >
                  {"Proceed"->React.string}
                </button>
              </div>
            }
            showPrimaryButton=false
            showSecondaryButton=false
          >
            <div className="p-4">
              {"This modal has a custom footer with custom buttons."->React.string}
            </div>
          </Modal>
        </div>
      </div>
    </div>
  }
}

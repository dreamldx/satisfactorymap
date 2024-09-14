import React from "react";

function App() {
    const str: string = "Hello world"

    function handleClick(e: React.MouseEvent<HTMLElement>) {
        console.log(e.clientX, e.clientY)
    }

    return (
        <>
            <button onClick={handleClick}> {str} </button>
        </>
    )
}

export default App;
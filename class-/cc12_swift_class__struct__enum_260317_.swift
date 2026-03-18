

// ## 🛠 Variable & Structure Breakdown

// ### 1. Data Structures & Enums
// * **`Point`**: `x`, `y`
// * **`NodeType`**: `number`, `plus`, `print`, `variable`, `text`
// * **`Port`**: `left`, `right`, `input`, `output`
// * **`Value`**: `.number(Double)`, `.text(String)` (Property: `description`)
// * **`Node`**: `id`, `type`, `title`, `position`, `content`
// * **`Connection`**: `fromNode`, `fromPort`, `toNode`, `toPort`

// ### 2. ViewModel: `NodeEditorViewModel`
// * **Properties**: `nodes`, `connections`
// * **`addNode`**:
//     * Parameters: `type`, `x`, `y`
//     * Locals: `title`, `content`, `newNode`
// * **`deleteNode`**:
//     * Parameter: `id`
// * **`addConnection`**:
//     * Parameters: `sourceID`, `sourcePort`, `targetID`, `targetPort`
//     * Locals: `newConn`
// * **`evaluate`**:
//     * Parameter: `node`
//     * Locals (Plus case): `leftConn`, `rightConn`, `leftNode`, `rightNode`, `leftVal`, `rightVal`, `l`, `r`
//     * Locals (Print case): `inputConn`, `inputNode`, `result`
// * **`run`**:
//     * Locals: `printNode`, `result`

// ---

// ## 📝 The Junior Dev Task

// **Goal:** Build a "Visual Logic Engine" in Swift that allows a user to create nodes (like numbers or math operators), connect them together, and evaluate the result.

// ### Requirements:

// 1.  **Define the Models:**
//     * Create a `Point` struct for coordinates.
//     * Create a `Node` struct. It must have a unique ID (UUID), a type, a title, a position, and a string for its content.
//     * Create a `Connection` struct to link two nodes via specific "Ports" (left, right, input, output).
// 2.  **Define the Logic Engine (`NodeEditorViewModel`):**
//     * **Storage:** Maintain arrays for all active nodes and connections.
//     * **Node Management:** Write a function to add a node (which sets default titles like "Number" or "Print" based on type) and a function to delete a node (ensure deleting a node also removes its connections).
//     * **Connection Management:** Write a function to connect two nodes. Prevent a node from connecting to itself.
// 3.  **The Evaluation System:**
//     * Create an `evaluate` function that takes a node and returns a `Value` (either a number or text).
//     * **If it's a Number node:** Parse the content string into a Double.
//     * **If it's a Plus node:** Look up connections to its `left` and `right` ports, find the source nodes, recursively evaluate them, and return the sum.
//     * **If it's a Print node:** Evaluate whatever is connected to its `input` port.
// 4.  **Execution:**
//     * Create a `run` function that finds the "Print" node in the system and triggers the evaluation chain.

// ### Test Case:
// Once coded, simulate the following:
// 1. Create two **Number** nodes (values "5" and "10").
// 2. Create one **Plus** node.
// 3. Create one **Print** node.
// 4. Connect the numbers to the plus node, and the plus node to the print node.
// 5. Call `run()` and confirm the output is "15.0".

// ---





// D:\src\SWIFT-\TUTS-\SRC-\PRAC-SWIFT-260109-\CODE-\SRC-\CC11-\cc12_swift_class__struct__enum_260317_.swift

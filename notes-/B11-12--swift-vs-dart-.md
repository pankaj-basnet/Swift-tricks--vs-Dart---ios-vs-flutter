



---




---

- **Swift `if let` tricky cases vs Dart equivalents** 

---

### `if let` / optional-binding comparison (Swift vs Dart)

| Case                      | Swift syntax                            | Compiles?        | Dart equivalent                       | Notes / Tricky part                                                                   |
| ------------------------- | --------------------------------------- | ---------------- | ------------------------------------- | ------------------------------------------------------------------------------------- |
| **Non-optional value**    | `let x = "a"`<br>`if let x {}`          | ❌                | `var x = "a"; if (x != null) {}`      | Swift **rejects** binding non-optionals; Dart allows null checks on any nullable type |
| **Optional with value**   | `let x: String? = "a"`<br>`if let x {}` | ✅                | `String? x = "a"; if (x != null) {}`  | Swift unwraps into a **new non-optional binding**                                     |
| **Optional is nil**       | `let x: String? = nil`<br>`if let x {}` | ✅ (else branch)  | `String? x = null; if (x != null) {}` | Same runtime behavior                                                                 |
| **Shadowing name**        | `if let x {}`                           | ✅                | `if (x != null) { var x = x!; }`      | Swift auto-shadows; Dart requires explicit unwrap                                     |
| **Multiple bindings**     | `if let a, let b {}`                    | ✅                | `if (a != null && b != null) {}`      | Swift binds both safely                                                               |
| **Optional chaining**     | `if let x = foo?.bar {}`                | ✅                | `if (foo?.bar != null) {}`            | Dart doesn’t auto-bind result                                                         |
| **Force unwrap**          | `print(x!)`                             | ⚠️ runtime crash | `print(x!)`                           | Both crash if null                                                                    |
| **Guard let**             | `guard let x else { return }`           | ✅                | `if (x == null) return;`              | Swift enforces early exit                                                             |
| **Constant binding**      | `if let x { x = "b" }`                  | ❌                | `final x = ...`                       | Swift bindings are immutable                                                          |
| **Type mismatch**         | `let x: Int? = 5`<br>`if let x {}`      | ✅ (`x` is `Int`) | `int? x = 5; if (x != null)`          | Swift unwraps type automatically                                                      |
| **Non-Boolean condition** | `if let x {}`                           | ✅                | ❌ (`if (x)` invalid)                  | Swift uses **presence**, Dart requires `bool`                                         |

---

### Key mental model difference

**Swift**

* `if let` = *unwrap + bind + scope*
* Only works with **Optionals**
* Creates a **new non-optional constant**

**Dart**

* `if` = *boolean condition*
* Null checks are explicit
* Unwrapping often requires `!` or pattern matching

---

### Swift shorthand vs Dart verbosity example

**Swift**

```swift
if let user {
    print(user.name)
}
```

**Dart**

```dart
if (user != null) {
  print(user!.name);
}
```

---
 

---




---




---




---
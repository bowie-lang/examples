# Bowie Examples

A collection of example programs demonstrating the Bowie language.

## Running an example

```sh
bowie <file.bow>
```

---

## `hello_world.bow`

A tour of the core language: variables, functions, control flow, loops, arrays, hash maps, and closures.

```sh
bowie hello_world.bow
```

---

## `math_utils.bow`

A reusable module that exports constants and functions (`PI`, `add`, `multiply`, `circle_area`, `factorial`). Intended to be imported by other programs, not run directly.

---

## `import_demo.bow`

Shows the three import styles Bowie supports:

| Style | Syntax |
|-------|--------|
| Namespace | `import "math_utils.bow" as math` |
| Selective | `import "math_utils.bow" use multiply, factorial` |
| Wildcard | `import "math_utils.bow"` |

```sh
bowie import_demo.bow
```

---

## `json_demo.bow`

Demonstrates JSON encoding/decoding, string manipulation (`trim`, `upper`, `lower`, `split`, `replace`), environment variables, and math built-ins.

```sh
bowie json_demo.bow
```

---

## `rest-api/`

A multi-file REST API server structured with controllers, routes, and services.

```
rest-api/
├── server.bow              # Entry point — calls serve()
└── app/
    ├── index.bow           # Creates the server, mounts all routes
    ├── controllers/        # Request handlers
    ├── routes/             # Route registration
    └── services/           # Business logic
```

```sh
cd rest-api
PORT=4000 bowie server.bow
```

The server starts on `http://127.0.0.1:4000` (override with the `PORT` env var).

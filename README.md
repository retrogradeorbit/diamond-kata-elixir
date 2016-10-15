# Diamond

## Test

```$ mix test
Compiling 1 file (.ex)
Generated diamond app
....

Finished in 0.04 seconds
4 tests, 0 failures
```

## Run

```$ mix escript.build
$ ./diamond 6
      A
     B B
    C   C
   D     D
  E       E
 F         F
G           G
 F         F
  E       E
   D     D
    C   C
     B B
      A
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `diamond` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:diamond, "~> 0.1.0"}]
    end
    ```

  2. Ensure `diamond` is started before your application:

    ```elixir
    def application do
      [applications: [:diamond]]
    end
    ```

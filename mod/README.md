# Go mod action

This action execute `go mod tidy` to check if any unused imports exists inside your `go.mod` file
and return the command output if fail.

## Outputs

### `gomod-output`

The go mod output if the command fail.

## Example usage

```yaml
uses: Jerome1337/go-action/mod@v1.0.0
````

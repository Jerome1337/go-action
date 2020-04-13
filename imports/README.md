# Goimports action

This action execute goimports command and return the output if the command fail.

## Inputs

### `goimports-path`

Path used by goimports command, default is `./`.

## Outputs

### `goimports-output`

The goimports output if the command fail.

## Example usage

```yaml
uses: Jerome1337/go-action/imports@v1.0.0
with:
  goimports-path: './src'
````

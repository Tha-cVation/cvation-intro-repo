# Test for GitHub Pipelines

## Options
### Inputs
| Name       | Type   | Required | Default | Description                           |
| ---------- | ------ | -------- | ------- | ------------------------------------- |
| PRINT_THIS | String | true     | .       | Print this string through this action |

## Usage

```yaml
job-test:
    name: "Print input"
    uses: https://github.com/Tha-cVation/cvation-intro-preset-repo/blob/main/.github/workflows/print_this_preset.yml@main
    with:
        PRINT_THIS: "EH"
```
# LTFS Build docker action for CentOS8

This action builds the LTFS package on CentOS8

## Inputs

### `destination`

**Required** Destination of install。 Default is `/tmp/ltfs`。

## Outputs

None

## Usage

```
uses: LinearTapeFileSystem/CentOS8-Build@v1.0
with:
  destination: '/tmp/ltfs'
```

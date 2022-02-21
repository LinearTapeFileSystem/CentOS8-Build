# LTFS Build docker action for CentOS8 (Rocky Linux)

This action builds the LTFS package on CentOS8 (Rocky Linux)

## Inputs

### `destination`

**Required** Destination of install. Default is `/tmp/ltfs`.

## Outputs

None

## Usage

```
uses: LinearTapeFileSystem/CentOS8-Build@v1.5
with:
  destination: '/tmp/ltfs'
```

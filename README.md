# Image_Arena

This repository is set up to store `.jpg` images so they can be fetched later using GitHub's raw content endpoint (`raw.githubusercontent.com`).

## Where to store images

Add all image files to:

- `images/`

Use `.jpg` extension for each file.

## Raw URL format for fetching

After pushing an image to this repository, it can be fetched with this URL pattern:

```text
https://raw.githubusercontent.com/marketing-and-customer-insight/Image_Arena/<branch>/images/<file-name>.jpg
```

Example:

```text
https://raw.githubusercontent.com/marketing-and-customer-insight/Image_Arena/main/images/cat.jpg
```

## Notes

- Keep filenames stable so downstream models can fetch predictable paths.
- Commit only valid JPG images in `images/`.

Optional validation before commit:

```bash
./scripts/validate_jpg_storage.sh
```

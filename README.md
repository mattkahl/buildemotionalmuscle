The restored website for http://buildemotionalmuscle.com. It has been restored from a [web.archive.org]() backup and modified to function as a fully static site.

## Contents

### `website/`
This contains the modified archive to run as a static website.

Known changes:
- Replaced all instances of `http://buildemotionalmuscle.com/` with `/` because the links within the blog were broken.

### `archives/`

This is where full archives from [web.archive.org]() are stored. The initial archive is named `20181003`, it has an archive of the website as of 10/03/2008. 

## Fetch an archive from [web.archive.org]()
```
docker build .
docker run -t --rm -v $(pwd)/archives:/archives --name=buildemotionalmuscle buildemotionalmuscle wayback_machine_downloader -d /archives/myarchivename  -t 20181003  http://buildemotionalmuscle.com
```
This example will place a new archive in `./archives/myarchivename/`.

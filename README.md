# Auto MagPi

A bash script that retreives a list of all `*.pdf` files available from https://www.raspberrypi.org/magpi-issues/ and downloads those not present in the local `./library` directory.

## Getting Started
### Requirements
* `wget`
* `curl`

### Installation
1. Create a destination folder.

```
mkdir /destination/directory && cd $_
```

2. Clone the Auto MagPi repository.

```
git clone git@github.com:jasonjpeters/automagpi.git ./
```

3. Execute script.

```
chmod +x ./automagpi.sh && ./automagpi.sh
```

4. (Optional) Setup automated execution via cron job.

```
crontab -e
5 8 * * 0 sh /path/to/automagpi.sh
```

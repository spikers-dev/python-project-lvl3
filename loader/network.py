import requests


def download(url):
    try:
        requested = requests.get(
            url=url,
            timeout=3,
        )
        requested.raise_for_status()
    except (
        requests.RequestException,
        requests.exceptions.HTTPError,
    ) as request_err:
        print(request_err)
        # raise NetworkError(
        #    message="Can't connect to {url}".format(url=url),
        # ) from request_err

    return requested.content

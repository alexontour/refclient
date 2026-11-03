"""Mount the existing Flask UI beneath a configurable path."""

from werkzeug.exceptions import NotFound
from werkzeug.middleware.dispatcher import DispatcherMiddleware


def mount_application(application, prefix):
    prefix = prefix.rstrip("/")
    if not prefix:
        return application
    return DispatcherMiddleware(NotFound(), {prefix: application})

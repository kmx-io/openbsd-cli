# $OpenBSD: $

COMMENT=	CLI command line interface library

VERSION=	0.1
DISTNAME=	cli-${VERSION}
CATEGORIES=	devel

# License: BSD + SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/kmx-io/cli/archive/

WANTLIB=	c readline termcap

LIB_DEPENDS+=	devel/readline

SHARED_LIBS+=	cli 0.0

WRKDIST=	${WRKDIR}/cli-${DISTNAME}

CONFIGURE_STYLE= gnu

MAKE_ENV=	CC=gcc

USE_GMAKE=	Yes

.include <bsd.port.mk>

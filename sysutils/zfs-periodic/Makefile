# Created by: Peter Ankerstal <peter@pean.org>
# $FreeBSD: ports/sysutils/zfs-periodic/Makefile,v 1.5 2012/12/09 01:44:21 svnexp Exp $

PORTNAME=	zfs-periodic
PORTVERSION=	1.0.20121207
CATEGORIES=	sysutils

MAINTAINER=	peter@pean.org
COMMENT=	Simple way of maintaining zfs snapshots using the periodic system

USE_GITHUB=	yes
GH_ACCOUNT=	ross
GH_COMMIT=	5401176
GH_TAGNAME=	${GH_COMMIT}

NO_BUILD=	yes

PERIODIC_DIRS=	etc/periodic/hourly etc/periodic/daily \
		etc/periodic/weekly etc/periodic/monthly \
		etc/periodic

PERIODIC_FILES=	etc/periodic/hourly/000.zfs-snapshot \
		etc/periodic/daily/000.zfs-snapshot \
		etc/periodic/weekly/000.zfs-snapshot \
		etc/periodic/monthly/000.zfs-snapshot \
		etc/periodic/monthly/998.zfs-scrub

PLIST_FILES=	${PERIODIC_FILES} bin/zfs-snapshot
PLIST_DIRSTRY=	${PERIODIC_DIRS}

post-patch:
.for _file in ${PERIODIC_FILES}
	@${REINPLACE_CMD} -e "s|/etc/periodic/zfs-snapshot|${PREFIX}/bin/zfs-snapshot|" \
		${WRKSRC}/${_file}
.endfor

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/etc/periodic/zfs-snapshot ${PREFIX}/bin

.for _dir in ${PERIODIC_DIRS}
	@${MKDIR} ${PREFIX}/${_dir}
.endfor

.for _file in ${PERIODIC_FILES}
	@${INSTALL_SCRIPT} ${WRKSRC}/${_file} ${PREFIX}/${_file}
.endfor

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>

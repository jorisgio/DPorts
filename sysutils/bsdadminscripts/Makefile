# Created by: Dominic Fandrey <lon_kamikaze@gmx.de>
# $FreeBSD: ports/sysutils/bsdadminscripts/Makefile,v 1.28 2012/12/14 17:46:31 svnexp Exp $

PORTNAME=	bsdadminscripts
PORTVERSION=	6.1.1
PORTREVISION=	3
CATEGORIES=	sysutils ports-mgmt
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}

MAINTAINER=	kamikaze@bsdforen.de
COMMENT=	A collection of administration scripts

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src
NO_BUILD=	yes
MANCOMPRESSED=	yes

.if defined(NOPORTDOCS)
NOPORTDOCS=	-nodoc
.else
MAN1=		bsdadminscripts.1 \
		buildflags.mk.1 buildflags.conf.1 buildflags.awk.1 \
		distviper.1 \
		pkg_libchk.1 \
		pkg_upgrade.1 \
		pkg_validate.1 \
		portconfig.1 \
		rcstart.1 \
		uma.1

RC_SCRIPTS=	stop restart status onestart onestop onerestart onestatus
PORT_SCRIPTS=	build clean fetch package \
		config-recursive fetch-recursive
MLINKS+=	${RC_SCRIPTS:S,^,rc,:S,$,.1,:S,^,rcstart.1 ,} \
		${PORT_SCRIPTS:S,^,port,:S,$,.1,:S,^,portconfig.1 ,}
.endif

plist: patch
	@cd ${WRKSRC}; ./plist.sh -nodoc > ${PLIST}
	@${ECHO} "@dirrm ${DATADIR_REL}" >> ${PLIST}

do-install:
	@cd ${WRKSRC}; ./install.sh \
		-prefix=${PREFIX} -ports=${PORTSDIR} -distdir=${DISTDIR}  \
		-datadir=${DATADIR} ${NOPORTDOCS}

.include <bsd.port.mk>

# New ports collection makefile for:	dphys-config
# Date created:				12 Oct 2006
# Whom:					<gurkan@phys.ethz.ch>
#
# $FreeBSD: ports/misc/dphys-config/Makefile,v 1.9 2012/11/17 05:59:34 svnexp Exp $
#

PORTNAME=	dphys-config
PORTVERSION=	20100216
CATEGORIES=	misc
MASTER_SITES=	${MASTER_SITE_DEBIAN_POOL}
DISTNAME=	${PORTNAME}_${PORTVERSION}.orig

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Tool to distribute config files

RUN_DEPENDS=	wget:${PORTSDIR}/ftp/wget

NO_BUILD=	yes

MAN1=		dphys-config.1

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

post-patch:
	@${REINPLACE_CMD} -e 's|/etc|${PREFIX}/etc|' ${WRKSRC}/${PORTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MAN1PREFIX}/man/man1
	${MKDIR} ${EXAMPLESDIR}/site.example/local/sbin
.for f in dphys-config.example cron.d.example init.d.example
	${INSTALL_DATA} ${WRKSRC}/${f} ${EXAMPLESDIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/site.example/${PORTNAME}* \
		${EXAMPLESDIR}/site.example/
	${INSTALL_DATA} ${WRKSRC}/site.example/local/sbin/${PORTNAME}-* \
		${EXAMPLESDIR}/site.example/local/sbin/
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.example ${PREFIX}/etc/${PORTNAME}.sample
.if !exists(${PREFIX}/etc/${PORTNAME})
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.example ${PREFIX}/etc/${PORTNAME}
.endif

.include <bsd.port.mk>

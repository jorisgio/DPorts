# New ports collection makefile for:	Diablo
# Date created:				June 2nd 1997
# Whom:					James FitzGibbon <jfitz@FreeBSD.org>
#
# $FreeBSD: ports/news/diablo/Makefile,v 1.30 2012/11/17 06:00:41 svnexp Exp $
#

PORTNAME=	diablo
PORTVERSION=	5.1
CATEGORIES=	news
MASTER_SITES=	http://www.openusenet.org/diablo/download/
DISTNAME=	${PKGNAME}-REL
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A comprehensive newsfeeding and newsreading software package

BUILD_DEPENDS=	xmake:${PORTSDIR}/devel/xmake

MAN5=		diablo-kp.5 diablo-files.5
MAN8=		dicmd.8 didump.8 dexpireover.8 dfeedinfo.8 dgrpctl.8 \
		dilookup.8 diloadfromspool.8 doutq.8 dreadart.8 \
		dreaderd.8 dpath.8 drcmd.8 dsyncgroups.8 dreadover.8 \
		dkp.8 diablo.8 dexpire.8 dspoolout.8 dnewslink.8 \
		doverctl.8 drequeue.8 dhisexpire.8
PORTDOCS=	COPYRIGHT INSTALL README.READER README.SERVER RELEASE_NOTES

post-patch:
	@${CP} ${SCRIPTDIR}/diablo.sh-sample ${WRKDIR}
	@${REINPLACE_CMD} -E 's|%%PREFIX%%|${PREFIX}|g ;\
		s|-g -O.?|${CFLAGS}| ; s|g?cc|${CC}|' \
		${WRKDIR}/diablo.sh-sample ${WRKSRC}/XMakefile.inc
# Fix for GCC 4.2
	@${REINPLACE_CMD} -e 's|VServerConfig\[\]|*VServerConfig|' \
		${WRKSRC}/dreaderd/main.c

.if !defined(WITH_DES)
	@${REINPLACE_CMD} -e 's| -ldes||g' ${WRKSRC}/XMakefile.inc
.endif

do-build:
	@cd ${WRKSRC} && xmake all

pre-install:
	${INSTALL} -d ${DOCDIR} ${PREFIX}/news ${PREFIX}/news/dbin

do-install:
	@cd ${WRKSRC} && xmake install
	${INSTALL_SCRIPT} ${WRKDIR}/diablo.sh-sample ${PREFIX}/etc/rc.d
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

post-install:
	@${CAT} ${PKGMESSAGE}
	@${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL
	@${RM} -rf ${PREFIX}/news/man

.include <bsd.port.mk>

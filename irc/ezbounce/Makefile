# New ports collection makefile for:	ezbounce
# Date created:	 	19 February 1999
# Whom:			Chris Piazza <cpiazza@FreeBSD.org>
#
# $FreeBSD: ports/irc/ezbounce/Makefile,v 1.42 2012/11/17 05:58:28 svnexp Exp $
#

PORTNAME=	ezbounce
PORTVERSION=	1.99.15
CATEGORIES=	irc
MASTER_SITES=	http://www.linuxftw.com/ezbounce/files/

MAINTAINER=	flo@FreeBSD.org
COMMENT=	A highly configurable IRC Proxy

BUILD_DEPENDS=	${LOCALBASE}/include/boost/function.hpp:${PORTSDIR}/devel/boost-libs

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

SUB_FILES=	pkg-message

MAN1=		ezbounce.1

.if defined(WITH_SSL)
USE_OPENSSL=	YES
CONFIGURE_ARGS+=	--with-ssl
PLIST_SUB+=	SSL=""
.else
PLIST_SUB+=	SSL="@comment "
.endif

.include <bsd.port.pre.mk>

pre-everything::
	@${ECHO_MSG} ""
	@${ECHO_MSG} "You may use the following build options:"
	@${ECHO_MSG} ""
	@${ECHO_MSG} "	WITH_SSL=yes      Enable SSL support"
	@${ECHO_MSG} ""

post-patch:
	@${SED} -e "s:/path/to:${PREFIX}/sbin:" ${WRKSRC}/sample.conf > \
		${WRKSRC}/ezb.conf.default
	@${REINPLACE_CMD} -e 's|=-O2|="$$CXXFLAGS"|g' ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ezbounce ${PREFIX}/sbin
	${INSTALL_SCRIPT} ${WRKSRC}/ezb.conf.default ${PREFIX}/etc
	${INSTALL_MAN}	${WRKSRC}/docs/ezbounce.1 ${PREFIX}/man/man1

	@if [ ! -f ${PREFIX}/etc/ezb.conf ]; then \
		${INSTALL_DATA} \
		${WRKSRC}/ezb.conf.default ${PREFIX}/etc/ezb.conf; \
	fi

.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/TODO ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/worklog ${DOCSDIR}

.endif
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.post.mk>

# ex:ts=8
# New ports collection makefile for:           centerim
# Date created:                                2006-03-14
# Whom:                                 Frank Altpeter <frank@altpeter.de>
#
# $FreeBSD: ports/net-im/centerim-devel/Makefile,v 1.54 2012/11/17 06:00:26 svnexp Exp $
#

PORTNAME=	centerim
PORTVERSION=	4.22.10.11
CATEGORIES=	net-im
MASTER_SITES=	http://www.centerim.org/download/mobshots/ \
		ftp://ftp.centerim.org/mobshots/
PKGNAMESUFFIX=	-devel

MAINTAINER=	frank@altpeter.de
COMMENT=	A text mode menu- and window-driven IM interface

LICENSE=	GPLv2

LIB_DEPENDS=	curl.6:${PORTSDIR}/ftp/curl

USE_PERL5_RUN=	yes
USE_PYTHON_RUN=	yes
USE_ICONV=	yes
USE_OPENSSL=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-ssl --with-openssl
CONFLICTS=	centericq-[0-9]* centerim-[0-9]*

OPTIONS=	NLS             "Native Language Support" on \
		MULTIBYTE       "Multibyte Support" on \
		FRIBIDI         "Fribidi Support" on \
		MSN             "Support for MSN Protocol" on \
		YAHOO           "Support for Yahoo! Messenger Protocol" on \
		AIM             "Support for AOL's Instant Messenger Protocol" on \
		IRC             "Support for IRC Protocol" on \
		JABBER          "Support for Jabber Protocol" on \
		GPGME           "Support for PGP encrypted Jabber messages" on \
		RSS             "Support for RSS" on \
		LJ              "Support for LiveJournal" on \
		GG              "Support for Gadu-Gadu Protocol" on

MAN1=	cimconv.1 centerim.1

PORTDOCS=	FAQ README

.include <bsd.port.pre.mk>

.if defined(WITHOUT_NLS)
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=		NLS="@comment "
.else
USE_GETTEXT=		yes
PLIST_SUB+=		NLS=""
.endif

.if defined(WITH_MULTIBYTE)
CONFIGURE_ARGS+=	--enable-locales-fix
.endif

.if defined(WITH_FRIBIDI)
LIB_DEPENDS+=		fribidi.3:${PORTSDIR}/converters/fribidi
CONFIGURE_ARGS+=	--with-fribidi
.endif

.if !defined(WITH_MSN)
CONFIGURE_ARGS+=	--disable-msn
.endif

.if !defined(WITH_YAHOO)
CONFIGURE_ARGS+=	--disable-yahoo
.endif

.if !defined(WITH_AIM)
CONFIGURE_ARGS+=	--disable-aim
.endif

.if !defined(WITH_IRC)
CONFIGURE_ARGS+=	--disable-irc
.endif

.if !defined(WITH_JABBER)
CONFIGURE_ARGS+=	--disable-jabber
.else
.endif

.if !defined(WITH_GPGME)
CONFIGURE_ARGS+=	--without-gpgme
.else
LIB_DEPENDS+=		gpgme.19:${PORTSDIR}/security/gpgme
#CONFIGURE_ARGS+=	--with-gpgme=${LOCALBASE}
CONFIGURE_ARGS+=	--with-ssl
.endif

.if !defined(WITH_RSS)
CONFIGURE_ARGS+=	--disable-rss
.endif

.if !defined(WITH_LJ)
CONFIGURE_ARGS+=	--disable-lj
.endif

.if !defined(WITH_GG)
CONFIGURE_ARGS+=	--disable-gg
.else
LIB_DEPENDS+=		gadu.3:${PORTSDIR}/polish/ekg
LIBGADU=		-lgadu
.endif

post-patch:
	@${REINPLACE_CMD} -e 's|/var/run/screen|/tmp/screens|' \
		${WRKSRC}/src/icqconf.cc

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
	@(cd ${WRKSRC} ; ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR})
.endif

.include <bsd.port.post.mk>

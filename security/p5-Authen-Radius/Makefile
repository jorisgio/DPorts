# Created by: James FitzGibbon <jfitz@FreeBSD.org>
# $FreeBSD: ports/security/p5-Authen-Radius/Makefile,v 1.39 2012/11/19 09:56:44 svnexp Exp $

PORTNAME=	Authen-Radius
PORTVERSION=	0.22
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-
DISTNAME=	RadiusPerl-${PORTVERSION}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A perl5 module to provide simple Radius client facilities

RUN_DEPENDS=	p5-Data-HexDump>=0.02:${PORTSDIR}/devel/p5-Data-HexDump
BUILD_DEPENDS:=	${RUN_DEPENDS}

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}
PERL_CONFIGURE=	yes
MAN3=		Authen::Radius.3

RADDBFILES=	dictionary \
		dictionary.ascend \
		dictionary.cisco \
		dictionary.compat \
		dictionary.livingston \
		dictionary.quintum \
		dictionary.rfc2869 \
		dictionary.shiva \
		dictionary.tunnel \
		dictionary.usr \
		dictionary.versanet \
		dictionary.xtradius

pre-configure:
	@${RM} ${WRKSRC}/install-radius-db.PL
	@${PERL} -pi -e 's|/etc/raddb|${DATADIR}|' ${WRKSRC}/Radius.pm

post-install:
	@${MKDIR} ${DATADIR}
.for FILE in ${RADDBFILES}
	@${INSTALL_DATA} ${WRKSRC}/raddb/${FILE} ${DATADIR}/${FILE}
.endfor

.include <bsd.port.mk>

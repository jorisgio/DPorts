# Created by: Travis Campbell <hcoyote@ghostar.org>
# $FreeBSD: ports/security/p5-Digest-SHA/Makefile,v 1.32 2013/01/18 10:43:46 svnexp Exp $

PORTNAME=	Digest-SHA
PORTVERSION=	5.81
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Perl extension for SHA-1/224/256/384/512

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

TEST_DEPENDS=	p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod \
		p5-Test-Pod-Coverage>=0.08:${PORTSDIR}/devel/p5-Test-Pod-Coverage

PERL_CONFIGURE=	yes

MAN3=		Digest::SHA.3

# XXX:az - pkg-plist
PLIST_SUB+=	EXE_FILES="@comment "

post-patch:
	@${REINPLACE_CMD} -e '/EXE_FILES/d' ${WRKSRC}/Makefile.PL

.include <bsd.port.mk>

# Ports collection Makefile for:	p5-Digest-SHA-PurePerl
# Date created:				21 Dec, 2005
# Whom:					Gabor Kovesdan
# $FreeBSD: ports/security/p5-Digest-SHA-PurePerl/Makefile,v 1.27 2012/11/17 06:01:12 svnexp Exp $

PORTNAME=	Digest-SHA-PurePerl
PORTVERSION=	5.71
CATEGORIES=	security perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	ashish@FreeBSD.org
COMMENT=	Perl extension for SHA-1/224/256/384/512 in pure Perl

PERL_CONFIGURE=	yes

MAN3=		Digest::SHA::PurePerl.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 500803
RUN_DEPENDS+=	p5-Digest>=0:${PORTSDIR}/security/p5-Digest
.endif

.if ${PERL_LEVEL} >= 501000
PLIST_SUB+=	EXE_FILES="@comment "
.else
PLIST_SUB+=	EXE_FILES=""
MAN1=		shasum.1
.endif

post-patch:
.if ${PERL_LEVEL} >= 501000
	@${REINPLACE_CMD} -e '/EXE_FILES/d' ${WRKSRC}/Makefile.PL
.endif

.if !defined(NOPORTEXAMPLES)
post-install:
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/examples/dups ${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>

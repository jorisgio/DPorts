# Created by: Martin Matuska <mm@FreeBSD.org>
# $FreeBSD: ports/archivers/p5-IO-Compress/Makefile,v 1.22 2012/12/23 19:11:10 svnexp Exp $

PORTNAME=	IO-Compress
PORTVERSION=	2.059
CATEGORIES=	archivers perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PMQS
PKGNAMEPREFIX=	p5-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Perl5 compression modules (bzip2, deflate, gzip, zlib, zip)

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-Compress-Raw-Bzip2>=2.052:${PORTSDIR}/archivers/p5-Compress-Raw-Bzip2 \
		p5-Compress-Raw-Zlib>=2.052:${PORTSDIR}/archivers/p5-Compress-Raw-Zlib
RUN_DEPENDS=	p5-Compress-Raw-Bzip2>=2.052:${PORTSDIR}/archivers/p5-Compress-Raw-Bzip2 \
		p5-Compress-Raw-Zlib>=2.052:${PORTSDIR}/archivers/p5-Compress-Raw-Zlib
TEST_DEPENDS=	p5-Test-Pod>=1:${PORTSDIR}/devel/p5-Test-Pod

CONFLICTS=	p5-Compress-Zlib-2* p5-IO-Compress-Base-2* p5-IO-Compress-Zlib-2* p5-IO-Compress-Bzip2-2*

PERL_CONFIGURE=	yes

MAN3=		Compress::Zlib.3 \
		File::GlobMapper.3 \
		IO::Compress::Base.3 \
		IO::Compress::Bzip2.3 \
		IO::Compress::Deflate.3 \
		IO::Compress::FAQ.3 \
		IO::Compress::Gzip.3 \
		IO::Compress::RawDeflate.3 \
		IO::Compress::Zip.3 \
		IO::Uncompress::AnyInflate.3 \
		IO::Uncompress::AnyUncompress.3 \
		IO::Uncompress::Base.3 \
		IO::Uncompress::Bunzip2.3 \
		IO::Uncompress::Gunzip.3 \
		IO::Uncompress::Inflate.3 \
		IO::Uncompress::RawInflate.3 \
		IO::Uncompress::Unzip.3

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} >= 501600
PLIST_SUB+=	EXE_FILES="@comment "
.else
MAN1+=		zipdetails.1
PLIST_SUB+=	EXE_FILES=""
.endif

post-patch:
.if ${PERL_LEVEL} >= 501600
	@${REINPLACE_CMD} -e '/EXE_FILES/d' ${WRKSRC}/Makefile.PL
.endif

.include <bsd.port.post.mk>

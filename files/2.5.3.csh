#!/bin/csh -f

set commits = ( \
1a3f3f607ee5517d205edd63eb40ceec2cc5c8d9 # suppress clang undefined behavior sanitizer in EnvmapAttribute::copyValuesFrom() \
50c537fdd8200ca1def3c73f946beca376f076b3 # allow undefined EnvMap enum values for future proofing \
c2633f65f94943cd01477cfcc183a77dfa357988 # remove extraneous vector allocation in getScanlineChunkOffsetTableSize \
62f8ee6478016ff1011bcc4b177bd8dfb351ef48 # refactor: use local loop variable in copyFromFrameBuffer \
4d43d4355e8909f68629eb6f5dd3e9dd8fbeb813 # prevent invalid tile description enums \
a019890651dac6d0d89229d5c6a96a11c7b1e41f # prevent invalid Compression enum values being read from file \
50ad826031146f3e80c03d53179f9b3f64809912 # Fix out of bounds assignments \
c7af102e6bce6638add2f38576ffe9c6741ba768 # IexMathFpu.cpp: Fix build on non-glibc (e.g. musl libc). \
42d899ad9e8431fc2f87e357f4fb0ff01a4fe378 # cast signed chars to unsigned longs before left shift in read of signed long \
69450d13c774053bf89b90632cee2e940664019b # suppress clang undefined behavior sanitizer in DeepImageStateAttribute::copyValuesFrom() \
5478f34e95e7f50a26145e567f51979bf8ed2407 # fixed CI and Analysis badges in README.md \
bdc310a301d9f85aa24030bf2a2eeeebcc3d9b25 # prevent invalid values in LineOrder enum \
debcd3d108f9c1b9730cd986e3f36afa156700ad # fixed comment \
b607693f7069e90e3a3677983dc7b0f7453b2f8f # sanityCheckDisplayWindow() ensures that width and height don't cause integer overflow \
347d3b5668162662c73197446d4e07250e1ff2de # IlmImfFuzzTest reports incorrect test names and missing files as errors rather than silently succeeding. \
6cb530db89a224d7daab6a354e5b560113ddd44c # use ll in chunk size computation \
20c8f7d93d5115b824e4af79b8b8b9e3fe2d61a5 # use 64 bit computation in chunkoffsettable reconstruction \
180b17ecd169311c05ef677bd60005e12460dce6 # prevent invalid values in Channel's PixelType enum \
8ca9a02825eb2edefc702a2a3c708093c3127aa8 # change sanity check in stringvectorattribute to prevent overflow (#787) \
56eba8d067badd28638c6d3347df661ff94caa06 # cast signed chars to unsigned before bitwise left shift in Xdr::read() \
b8a849389b404c1fe06e1ca27de7db6948ab5ce0 # sanity check preview attribute sizes \
ec0320342adc1bbaf1ce2add35481a619a442c76 # Tidy whitespace in ImfStringVectorAttribute.cpp \
fe727eab851b0eace260dd91a820a27e7d2a162e # sanity check string vectors on read \
64153484c2e54c83f2784f70990f0249cf609aec # Removes overridden find_package in CMakeLists.txt in favor of reusing the generated config files and setting (IlmBase/OpenEXR)_DIR variables Overriding a cmake function is undocumented functionallity and only works one time. Better to avoid if possible. \
a8ac0e09eea2b6d6a09532abc4aeebe205b3ba33 # Cast to uintptr_t instead of size_t for mask ops on ptrs. \
f2283894243ff26bb8605281234338ee892e2677 # Switching to current c++ casting style. \
5d6e866c39dd889d19e0f9b19e4074a198df2d11 # IlmImf: Fix misc compiler warnings. \
f7b6d2a0af08df5083b2699d7437b8e820f844e5 # reformatted references to CVEs in CHANGES.md \
7c619a9f7e1e80161bc3c1b44c356ae8b3cd5868 # Add references to CVE-2020-15304, CVE-2020-15305, CVE-2020-15306 to SECURITY.md and CHANGES.md \
67053ebf1882ed93e74dbb7b5dcdcf0b2420c2c9 # Disable OPENEXR_IMF_HAVE_GCC_INLINE_ASM_AVX when building on arm64 macOS \
01117eb810f6cd3d6bdc358f29446c270f896203 # Addresses PR#767: Removal of legacy .cvsignore files. \
29af821e95609546a43ef950088ff6f8d98d847f # Fix typo in README \
24a1bf50bc59a93e80b0fba8fb2450967baa4de7 # v2.5.2 release notes in CHANGES.md \
51d442fb8b24c9953542fce1321d8a81372cdd38 # Add #755 to 2.4.2 release notes \
8ed5d9f6bf895af2322572971817ab3061c19f5f # Improved formatting of commits in release notes \
b4df4e9010242a052908a5615e332221bfe8a955 # added merged PR's to v2.4.2 release notes. \
00d954bb90dbcedf43f111c0c63b0a2f1dd4c4b0 # Release notes for v2.4.2 \
f8f90b86ac629174e6bbc89d2d5b9f25e9e84667 # Remove non-code-related PR's and commits from v2.5.2 release notes. \
09bee928cad140a6144728e1cf259af9a33bdfe6 # add commit history to release notes for v2.5.1 and v2.5.2 \
)

echo $commits

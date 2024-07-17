cmake_minimum_required(VERSION 3.21 FATAL_ERROR)

# ----------------------------------------------------------------------------
#
# Script to download all the linux versions of 'dotnet' 6 and 8 for 'x64' and 'aarch64'.
# Downloaded files are put in directory 'downloads'
#
# Usage:
#
#  cmake -P GetDotNet.cmake
#
# ----------------------------------------------------------------------------

macro(download_file url file_name sha512)
  message(STATUS "Checking downloading file ${file_name}")
  file(DOWNLOAD
    "${url}"
    "downloads/${file_name}"
    SHOW_PROGRESS
    EXPECTED_HASH SHA512=${sha512})
  message(STATUS "End of downloading file ${file_name}")
endmacro()

# ----------------------------------------------------------------------------

# .Net 6.0.31
download_file(
  "https://download.visualstudio.microsoft.com/download/pr/111a63f5-e1d4-4d07-b8b2-98642b5fcc59/389661b982fa5b83b09a1f50b9da247a/dotnet-sdk-6.0.423-linux-x64.tar.gz"
  "dotnet-sdk-6-linux-x64.tar.gz"
  4b4a0e66634211ae04fa030e18ae9e22640f5828307ba85c4bae596ab2d31260519197828dae3b2ec73d6772635e0b375536ea6591b03c67c2b7a5566f016952
)

download_file(
  "https://download.visualstudio.microsoft.com/download/pr/f60a9d6c-1df8-4b84-af48-1961ed476a38/32f60a0f291dce64fb33a502e69e78bf/dotnet-sdk-6.0.423-linux-arm64.tar.gz"
  "dotnet-sdk-6-linux-aarch64.tar.gz"
  42f5e89d6d9a9923bbc20398a6272290b5f693cc767aa540233630f849779daa8cc7d8ac87655f6b2c8e0250bf5be986a8e8ae502b6f33c0b3e474d041b77625
)

# ----------------------------------------------------------------------------

# .Net 8.0.6
download_file(
  "https://download.visualstudio.microsoft.com/download/pr/dd6ee0c0-6287-4fca-85d0-1023fc52444b/874148c23613c594fc8f711fc0330298/dotnet-sdk-8.0.302-linux-x64.tar.gz"
  "dotnet-sdk-8-linux-x64.tar.gz"
  43d0ea1df12c15a0e47560d2a84857ab50eb04ac693ab41413c04c591719101c4c8165e052a42a66719c67bd07ac299ca47edbb4944a2901df765042e56b316f
)

download_file(
  "https://download.visualstudio.microsoft.com/download/pr/ccc923ed-10de-4131-9c65-2a73f51185cb/3c04869af60dc562d81a673b2fb95515/dotnet-sdk-8.0.302-linux-arm64.tar.gz"
  "dotnet-sdk-8-linux-aarch64.tar.gz"
  a6432f93056d74a7dd666f0deda80c96e6dd6a5e6291f71a0128846df9dee5aa0016fc3bd39f34ce5a859bb82ea4e4302790a78ffc2d05216f07f9bf94440c40
)

# ----------------------------------------------------------------------------
# dotnet-tools

download_file(
  "https://www.nuget.org/api/v2/package/dotnet-symbol/8.0.532401"
  "dotnet-symbol.8.0.532401.nupkg"
  aa0067d1874ddf076876480de8aeaaeca9ccabaa946360f1c89cab0244ed14a10514a52348f598492400b8f47b9153474b56b69ee8dcd2f532c84f1cb9fe1a5e
)

download_file(
  "https://www.nuget.org/api/v2/package/dotnet-sos/8.0.532401"
  "dotnet-sos.8.0.532401.nupkg"
  4b74c8193aaafa448b5cc73163804e8e1d2106b8785ab572cc38b4df3976ebef5176d96de0ca4a5379c09428deb71858f67206140172bfa871adad1c429e9167
)

download_file(
  "https://www.nuget.org/api/v2/package/dotnet-gcdump/8.0.532401"
  "dotnet-gcdump.8.0.532401.nupkg"
  e591941f5a9375694fe543364a72750f1e4437ffd1baf7d4028f842cf6736f228c27d09de6b7a70e6b16e8819ee74509b61775682945c6ab004404dabe4dae4e
)

download_file(
  "https://www.nuget.org/api/v2/package/dotnet-trace/8.0.532401"
  "dotnet-trace.8.0.532401.nupkg"
  24611ceff8b94a901b174653bf30b4e8eea005dffe3c43fffba12cbc41c25b6063bbdf6f7839e0a9ec0c5701c5ffcfb94b2513e46cac16d6503ee84b9ecfcaa1
)

download_file(
  "https://www.nuget.org/api/v2/package/dotnet-counters/8.0.532401"
  "dotnet-counters.8.0.532401.nupkg"
  bd8a59eeb0d949cc8d296661cb9c605a800d164246ab9b200b6b43ac0494b2ba0727c4a273e7d58356855e6d0d999378262b718508c5ee00b38045c9b5f0b448
)

download_file(
  "https://www.nuget.org/api/v2/package/dotnet-dump/8.0.532401"
  "dotnet-dump.8.0.532401.nupkg"
  0a821d368dc8f1d7874f1d1ee81531e287bf42931520e563bb682106cf22b1c9eb19b124b2084867021c9b52e8749fff46166f3f857fa1e011fcfae5ce816e03
)




# ----------------------------------------------------------------------------
# Local Variables:
# tab-width: 2
# indent-tabs-mode: nil
# coding: utf-8-with-signature
# End:

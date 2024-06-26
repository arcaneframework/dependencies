cmake_minimum_required(VERSION 3.21 FATAL_ERROR)

# ----------------------------------------------------------------------------
#
# Script to download all the linux versions of 'dotnet' 6 and 8 for 'x64' and 'aarch64'.
#
# Usage:
#
#  cmake -P GetDotNet.cmake
#
# ----------------------------------------------------------------------------

# .Net 6.0.31
file(DOWNLOAD
  "https://download.visualstudio.microsoft.com/download/pr/111a63f5-e1d4-4d07-b8b2-98642b5fcc59/389661b982fa5b83b09a1f50b9da247a/dotnet-sdk-6.0.423-linux-x64.tar.gz"
  "dotnet-sdk-6-linux-x64.tar.gz"
  SHOW_PROGRESS
  EXPECTED_HASH SHA512=4b4a0e66634211ae04fa030e18ae9e22640f5828307ba85c4bae596ab2d31260519197828dae3b2ec73d6772635e0b375536ea6591b03c67c2b7a5566f016952
)

file(DOWNLOAD
  "https://download.visualstudio.microsoft.com/download/pr/f60a9d6c-1df8-4b84-af48-1961ed476a38/32f60a0f291dce64fb33a502e69e78bf/dotnet-sdk-6.0.423-linux-arm64.tar.gz"
  "dotnet-sdk-6-linux-aarch64.tar.gz"
  SHOW_PROGRESS
  EXPECTED_HASH SHA512=42f5e89d6d9a9923bbc20398a6272290b5f693cc767aa540233630f849779daa8cc7d8ac87655f6b2c8e0250bf5be986a8e8ae502b6f33c0b3e474d041b77625
)

# ----------------------------------------------------------------------------

# .Net 8.0.6
file(DOWNLOAD
  "https://download.visualstudio.microsoft.com/download/pr/dd6ee0c0-6287-4fca-85d0-1023fc52444b/874148c23613c594fc8f711fc0330298/dotnet-sdk-8.0.302-linux-x64.tar.gz"
  "dotnet-sdk-8-linux-x64.tar.gz"
  SHOW_PROGRESS
  EXPECTED_HASH SHA512=43d0ea1df12c15a0e47560d2a84857ab50eb04ac693ab41413c04c591719101c4c8165e052a42a66719c67bd07ac299ca47edbb4944a2901df765042e56b316f
)

file(DOWNLOAD
  "https://download.visualstudio.microsoft.com/download/pr/ccc923ed-10de-4131-9c65-2a73f51185cb/3c04869af60dc562d81a673b2fb95515/dotnet-sdk-8.0.302-linux-arm64.tar.gz"
  "dotnet-sdk-8-linux-aarch64.tar.gz"
  SHOW_PROGRESS
  EXPECTED_HASH SHA512=a6432f93056d74a7dd666f0deda80c96e6dd6a5e6291f71a0128846df9dee5aa0016fc3bd39f34ce5a859bb82ea4e4302790a78ffc2d05216f07f9bf94440c40
)

# ----------------------------------------------------------------------------
# Local Variables:
# tab-width: 2
# indent-tabs-mode: nil
# coding: utf-8-with-signature
# End:

#!/bin/bash

set -ex
git clone git@github.com:Foodvisor/default-offer-manager-fetcher.git
xcodebuild -project default-offer-manager-fetcher/default-offer-manager-fetcher/default-offer-manager-fetcher.xcodeproj -configuration Release
default-offer-manager-fetcher/build/Release/default-offer-manager-fetcher -env "${env}" -version "${version}"
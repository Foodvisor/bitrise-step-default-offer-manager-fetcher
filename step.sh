#!/bin/bash

set -ex
git clone git@github.com:Foodvisor/default-offer-manager-fetcher.git
xcodebuild -project default-offer-manager-fetcher/default-offer-manager-fetcher/default-offer-manager-fetcher.xcodeproj -configuration Release
default-offer-manager-fetcher/default-offer-manager-fetcher/build/Release/default-offer-manager-fetcher -env "${env}" -version "${version}"
cp ./Foodvisor/App/Premium/Offers/default/default-offers.json $BITRISE_DEPLOY_DIR

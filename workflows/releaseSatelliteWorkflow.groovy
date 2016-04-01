#!/usr/bin/groovy

node('rhel') {

    git url: "https://github.com/ehelms/robottelo-ci.git", branch: "satellite-release"

    stage "Generate Compose"

        sh "./scripts/generate_compose.sh version=6.2.0 rhel=rhel7"

    stage "Release Satellite"

    stage "Release Capsule"

    stage "Release Tools"

    stage "Install Test"

    stage "Promote to Test"

}

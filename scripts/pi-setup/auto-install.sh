#! /usr/bin/env bash

 #
 # Copyright (c) 2023 Project CHIP Authors
 #
 # Licensed under the Apache License, Version 2.0 (the "License");
 # you may not use this file except in compliance with the License.
 # You may obtain a copy of the License at
 #
 # http://www.apache.org/licenses/LICENSE-2.0
 #
 # Unless required by applicable law or agreed to in writing, software
 # distributed under the License is distributed on an "AS IS" BASIS,
 # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 # See the License for the specific language governing permissions and
 # limitations under the License.
ROOT_DIR=$(realpath $(dirname "$0")/../..)
SCRIPT_DIR="$ROOT_DIR/scripts"
PI_SCRIPT_DIR="$SCRIPT_DIR/pi-setup"
UBUNTU_SCRIPT_DIR="$SCRIPT_DIR/ubuntu"

printf "\n\n**********"
printf "\n*** Installing Raspberry Pi Dependencies ***\n"
$PI_SCRIPT_DIR/install-pi-dependencies.sh
if [ $? -ne 0 ]; then
    echo "### Exit with Error ###"
    exit 1
fi

$UBUNTU_SCRIPT_DIR/auto-install.sh
if [ $? -ne 0 ]; then
    echo "### Exit with Error ###"
    exit 1
fi

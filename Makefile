#
# This Makefile will download
# Nordic Semiconductor's nRF51822 SDK Version 6.1.0 and
# SoftDevice Version 7.3.0
#
# Usage: make
#

URL_SDK = http://developer.nordicsemi.com/nRF5_SDK/nRF51_SDK_v6.x.x/nrf51_sdk_v6_1_0_b2ec2e6.zip
URL_SOFTDEVICE = https://www.nordicsemi.com/eng/nordic/download_resource/48420/16/59654104

all: download

download: sdk/sdk.zip softdevice/softdevice.zip

sdk/sdk.zip:
	mkdir sdk/ && cd sdk/ && wget -c $(URL_SDK) -qO sdk.zip && unzip sdk.zip

softdevice/softdevice.zip:
	mkdir softdevice/ && cd softdevice/ && wget -c $(URL_SOFTDEVICE) -qO softdevice.zip && unzip softdevice.zip

clean:
	rm -fr sdk/ softdevice/


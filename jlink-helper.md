## Nordic Semiconductor

```bash
JLinkExe -Device NRF52 -Speed 4000 -If SWD -Autoconnect 1
JLinkExe -Device NRF51 -Speed 4000 -If SWD -Autoconnect 1

# Use specific emulator (USB)
JLinkExe -Device NRF52 -Speed 4000 -If SWD -SelectEmuBySN 123456789 -Autoconnect 1

# Use ethernet connection
JLinkExe -Device NRF52 -Speed 4000 -If SWD -Ip 192.168.1.222 -Autoconnect 1

# RTT viewing
JLinkExe -Device NRF52 -Speed 4000 -If SWD -SelectEmuBySN 987654321 -RTTTelnetPort 9100 -Autoconnect 1
exec SetRTTAddr 20002c40

JLinkExe -Device NRF52 -Speed 4000 -If SWD -SelectEmuBySN 123456789 -RTTTelnetPort 9101 -Autoconnect 1
exec SetRTTAddr 20002c40

# start JLinkRTTClient in other terminal
JLinkRTTClient -RTTTelnetPort 9100
JLinkRTTClient -RTTTelnetPort 9101

# Use RTT logger and ethernet connection
JLinkRTTLogger -Device NRF52 -speed 4000 -if SWD -ip 192.168.1.222 -RTTChannel 0
```

## STM32

```bash
JLinkExe -device STM32F411RE -speed 4000 -if SWD
connect
r
erase
loadbin file.bin, 0x08000000
r
g
```

## SAM D21

```bash
JLinkExe -device ATSAMD21E18 -speed 4000 -if SWD -ip 192.168.1.222 -AutoConnect 1
r
erase
loadfile "firmware.hex"
r
g
```

## SAM D11

```bash
JLinkExe -device ATSAMD11D14AM -speed 2700 -if SWD -ip 192.168.1.222
connect
r
erase
loadbin firmware.bin, 0x0
r
exit
```

## CYPD21xxx

```bash
JLinkExe -device CYPD21xxx -speed 4000 -if SWD
```

## Other notes

```
Ozone:
Project.AddFileAlias
Project.AddPathSubstitute

nrfjprog:
nrfjprog --family NRF51 --program firmware.hex --chiperase --verify
```
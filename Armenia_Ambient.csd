<CsoundSynthesizer>

<CsOptions>
-d -odac
</CsOptions>

<CsInstruments>

sr = 48000
ksmps = 64
nchnls = 2
0dbfs = 1

instr 1

a1 poscil 0.1, 220
a2 poscil 0.05, 330

aMix = a1 + a2

aMix moogladder aMix, 1500, 0.2

aL,aR reverbsc aMix,aMix,0.85,12000

outs aL,aR

endin

</CsInstruments>

<CsScore>
i1 0 3600
</CsScore>

</CsoundSynthesizer>
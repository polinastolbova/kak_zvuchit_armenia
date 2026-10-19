s.boot;

(
{
    var freqs;
    var sig;

    freqs = Array.fill(12, {

        LFNoise1.kr(
            Rand(0.001, 0.02)
        ).exprange(80, 1200)

    });

    sig = Mix.fill(12, { |i|

        SinOsc.ar(
            freqs[i]
        ) *

        LFNoise1.kr(
            Rand(0.001, 0.03)
        ).range(
            0.0,
            0.05
        )

    });

    sig = LPF.ar(sig, 2500);

    sig = GVerb.ar(
        sig,
        roomsize: 120,
        revtime: 18,
        damping: 0.6
    );

    sig * 0.4;

}.play;
)

s.freeAll;

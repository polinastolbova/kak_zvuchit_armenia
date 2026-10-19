s.boot;

(
{
    var freq;
    var drone;
    var wind;
    var bells;

    freq = LFNoise1.kr(0.03).range(180, 260);

    drone = Mix([

        Saw.ar(freq),

        SinOsc.ar(freq * 1.5),

        SinOsc.ar(freq * 2)

    ]) * 0.05;

    drone = LPF.ar(drone, 1200);

    wind = PinkNoise.ar(0.03);

    wind = LPF.ar(
        wind,
        LFNoise1.kr(0.05).range(500, 3000)
    );

    bells = Dust.ar(0.1);

    bells = Ringz.ar(
        bells,
        LFNoise1.kr(0.1).range(600, 2500),
        4
    ) * 0.1;

    drone = drone + wind + bells;

    drone = FreeVerb.ar(
        drone,
        0.8,
        0.95,
        0.4
    );

    drone = Limiter.ar(drone, 0.7);

    drone ! 2;

}.play;
)

s.freeAll;

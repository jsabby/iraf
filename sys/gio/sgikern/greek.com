# GCHTAB -- Table of strokes for the printable Greek characters.  Each
# character is encoded as a series of strokes.  Each stroke is ex-
# pressed by a single integer containing the following bitfields:
#
#       2                   1
#       0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1
#                 | | | |         | |         |
#                 | | | +---------+ +---------+
#                 | | |      |           |
#                 | | |      X           Y
#                 | | |
#                 | | +-- pen up/down
#                 | +---- begin paint (not used at present)
#                 +------ end paint (not used at present)
#
#----------------------------------------------------------------------------

# Define the database.

short   gchidx[97]	# character index in gchtab
short   gchwid[97]	# character width table
short   gchtab[2135]	# stroke data to draw the characters

# Index into GCHTAB of each printable character (starting with SP)

data    (gchidx(i), i=001,005) /    1,    3,   16,   29,   38/
data    (gchidx(i), i=006,010) /   77,  107,  154,  162,  181/
data    (gchidx(i), i=011,015) /  200,  205,  212,  233,  240/
data    (gchidx(i), i=016,020) /  246,  259,  297,  306,  348/
data    (gchidx(i), i=021,025) /  392,  402,  437,  483,  510/
data    (gchidx(i), i=026,030) /  568,  614,  645,  658,  666/
data    (gchidx(i), i=031,035) /  673,  681,  688,  741,  767/
data    (gchidx(i), i=036,040) /  793,  795,  806,  821,  863/
data    (gchidx(i), i=041,045) /  874,  883,  888,  899,  901/
data    (gchidx(i), i=046,050) /  912,  921,  930,  972,  987/
data    (gchidx(i), i=051,055) / 1037, 1067, 1083, 1088, 1117/
data    (gchidx(i), i=056,060) / 1143, 1182, 1207, 1242, 1244/
data    (gchidx(i), i=061,065) / 1253, 1256, 1265, 1267, 1276/
data    (gchidx(i), i=066,070) / 1284, 1321, 1373, 1394, 1436/
data    (gchidx(i), i=071,075) / 1465, 1500, 1520, 1549, 1563/
data    (gchidx(i), i=076,080) / 1605, 1630, 1650, 1674, 1694/
data    (gchidx(i), i=081,085) / 1724, 1741, 1783, 1812, 1844/
data    (gchidx(i), i=086,090) / 1857, 1886, 1888, 1929, 1970/
data    (gchidx(i), i=091,095) / 2001, 2031, 2069, 2074, 2112/
data    (gchidx(i), i=096,096) / 2121/


# Width data.

data    (gchwid(i), i=001,005) /   21,   15,   15,   26,   25/
data    (gchwid(i), i=006,010) /   29,   30,   15,   19,   19/
data    (gchwid(i), i=011,015) /   27,   29,   30,   29,   15/
data    (gchwid(i), i=016,020) /   31,   25,   25,   25,   25/
data    (gchwid(i), i=021,025) /   25,   25,   25,   25,   25/
data    (gchwid(i), i=026,030) /   25,   29,   15,   29,   31/
data    (gchwid(i), i=031,035) /   29,   31,   32,   25,   30/
data    (gchwid(i), i=036,040) /   21,   25,   29,   26,   23/
data    (gchwid(i), i=041,045) /   26,   19,   25,   21,   25/
data    (gchwid(i), i=046,050) /   21,   21,   27,   29,   27/
data    (gchwid(i), i=051,055) /   29,   26,   19,   24,   25/
data    (gchwid(i), i=056,060) /   27,   27,   28,   21,   19/
data    (gchwid(i), i=061,065) /   19,   19,   21,   31,   27/
data    (gchwid(i), i=066,070) /   28,   26,   23,   24,   23/
data    (gchwid(i), i=071,075) /   27,   25,   27,   17,   24/
data    (gchwid(i), i=076,080) /   25,   25,   28,   25,   23/
data    (gchwid(i), i=081,085) /   27,   28,   24,   26,   25/
data    (gchwid(i), i=086,090) /   25,   21,   28,   22,   28/
data    (gchwid(i), i=091,095) /   23,   19,   19,   19,   31/
data    (gchwid(i), i=096,096) /   19/


# Stroke data.

data    (gchtab(i), i=0001,0005) /    35,     0,   220,  4250,  4302/
data    (gchtab(i), i=0006,0010) /  4378,  4316,   218,  4308,   201/
data    (gchtab(i), i=0011,0015) /  4232,  4295,  4360,  4297,     0/
data    (gchtab(i), i=0016,0020) /   213,  4244,  4307,  4372,  4309/
data    (gchtab(i), i=0021,0025) /   199,  4232,  4297,  4360,  4358/
data    (gchtab(i), i=0026,0030) /  4292,  4227,     0,   604,  4224/
data    (gchtab(i), i=0031,0035) /   988,  4608,   145,  5137,    75/
data    (gchtab(i), i=0036,0040) /  5067,     0,   416,  4483,   672/
data    (gchtab(i), i=0041,0045) /  4739,   921,  4952,  5015,  5080/
data    (gchtab(i), i=0046,0050) /  5081,  4955,  4764,  4508,  4315/
data    (gchtab(i), i=0051,0055) /  4185,  4183,  4245,  4308,  4435/
data    (gchtab(i), i=0056,0060) /  4817,  4944,  5070,    87,  4309/
data    (gchtab(i), i=0061,0065) /  4436,  4818,  4945,  5008,  5070/
data    (gchtab(i), i=0066,0070) /  5066,  4936,  4743,  4487,  4296/
data    (gchtab(i), i=0071,0075) /  4170,  4171,  4236,  4299,  4234/
data    (gchtab(i), i=0076,0080) /     0,  1244,  4167,   412,  4634/
data    (gchtab(i), i=0081,0085) /  4632,  4566,  4437,  4309,  4183/
data    (gchtab(i), i=0086,0090) /  4185,  4251,  4380,  4508,  4635/
data    (gchtab(i), i=0091,0095) /  4826,  5018,  5211,  5340,   974/
data    (gchtab(i), i=0096,0100) /  4941,  4875,  4873,  4999,  5127/
data    (gchtab(i), i=0101,0105) /  5256,  5322,  5324,  5198,  5070/
data    (gchtab(i), i=0106,0110) /     0,  1236,  5267,  5330,  5395/
data    (gchtab(i), i=0111,0115) /  5396,  5333,  5269,  5204,  5138/
data    (gchtab(i), i=0116,0120) /  5005,  4874,  4744,  4615,  4423/
data    (gchtab(i), i=0121,0125) /  4232,  4170,  4173,  4239,  4627/
data    (gchtab(i), i=0126,0130) /  4757,  4823,  4825,  4763,  4636/
data    (gchtab(i), i=0131,0135) /  4507,  4441,  4439,  4500,  4625/
data    (gchtab(i), i=0136,0140) /  4938,  5064,  5255,  5319,  5384/
data    (gchtab(i), i=0141,0145) /  5385,   327,  4296,  4234,  4237/
data    (gchtab(i), i=0146,0150) /  4303,  4433,   343,  4501,  5002/
data    (gchtab(i), i=0151,0155) /  5128,  5255,     0,   218,  4251/
data    (gchtab(i), i=0156,0160) /  4316,  4379,  4377,  4311,  4246/
data    (gchtab(i), i=0161,0165) /     0,   608,  4574,  4443,  4311/
data    (gchtab(i), i=0166,0170) /  4242,  4238,  4297,  4421,  4546/
data    (gchtab(i), i=0171,0175) /  4672,   478,  4442,  4375,  4306/
data    (gchtab(i), i=0176,0180) /  4302,  4361,  4422,  4546,     0/
data    (gchtab(i), i=0181,0185) /    96,  4318,  4443,  4567,  4626/
data    (gchtab(i), i=0186,0190) /  4622,  4553,  4421,  4290,  4160/
data    (gchtab(i), i=0191,0195) /   222,  4442,  4503,  4562,  4558/
data    (gchtab(i), i=0196,0200) /  4489,  4422,  4290,     0,   151/
data    (gchtab(i), i=0201,0205) /  5129,  1047,  4233,     0,   664/
data    (gchtab(i), i=0206,0210) /  4743,   144,  5264,   135,  5255/
data    (gchtab(i), i=0211,0215) /     0,  1227,  5195,  5068,  4942/
data    (gchtab(i), i=0216,0220) /  4754,  4691,  4564,  4436,  4307/
data    (gchtab(i), i=0221,0225) /  4241,  4239,  4301,  4428,  4556/
data    (gchtab(i), i=0226,0230) /  4685,  4750,  4946,  5076,  5205/
data    (gchtab(i), i=0231,0235) /  5333,     0,   664,  4743,   152/
data    (gchtab(i), i=0236,0240) /  5272,   144,  5264,     0,   201/
data    (gchtab(i), i=0241,0245) /  4232,  4295,  4360,  4297,     0/
data    (gchtab(i), i=0246,0250) /   729,  4760,  4823,  4888,  4825/
data    (gchtab(i), i=0251,0255) /   144,  5392,   713,  4744,  4807/
data    (gchtab(i), i=0256,0260) /  4872,  4809,     0,   476,  4379/
data    (gchtab(i), i=0261,0265) /  4248,  4179,  4176,  4235,  4360/
data    (gchtab(i), i=0266,0270) /  4551,  4679,  4872,  5003,  5072/
data    (gchtab(i), i=0271,0275) /  5075,  5016,  4891,  4700,  4572/
data    (gchtab(i), i=0276,0280) /   476,  4443,  4378,  4312,  4243/
data    (gchtab(i), i=0281,0285) /  4240,  4299,  4361,  4424,  4551/
data    (gchtab(i), i=0286,0290) /   583,  4808,  4873,  4939,  5008/
data    (gchtab(i), i=0291,0295) /  5011,  4952,  4890,  4827,  4700/
data    (gchtab(i), i=0296,0300) /     0,   280,  4505,  4700,  4679/
data    (gchtab(i), i=0301,0305) /   539,  4615,   263,  4935,     0/
data    (gchtab(i), i=0306,0310) /   152,  4311,  4246,  4183,  4184/
data    (gchtab(i), i=0311,0315) /  4250,  4315,  4508,  4764,  4955/
data    (gchtab(i), i=0316,0320) /  5018,  5080,  5078,  5012,  4818/
data    (gchtab(i), i=0321,0325) /  4496,  4367,  4237,  4170,  4167/
data    (gchtab(i), i=0326,0330) /   668,  4891,  4954,  5016,  5014/
data    (gchtab(i), i=0331,0335) /  4948,  4754,  4496,    73,  4234/
data    (gchtab(i), i=0336,0340) /  4362,  4680,  4872,  5001,  5066/
data    (gchtab(i), i=0341,0345) /   266,  4679,  4935,  5000,  5066/
data    (gchtab(i), i=0346,0350) /  5068,     0,   152,  4311,  4246/
data    (gchtab(i), i=0351,0355) /  4183,  4184,  4250,  4315,  4508/
data    (gchtab(i), i=0356,0360) /  4764,  4955,  5017,  5014,  4948/
data    (gchtab(i), i=0361,0365) /  4755,  4563,   668,  4891,  4953/
data    (gchtab(i), i=0366,0370) /  4950,  4884,  4755,   659,  4882/
data    (gchtab(i), i=0371,0375) /  5008,  5070,  5067,  5001,  4936/
data    (gchtab(i), i=0376,0380) /  4743,  4487,  4296,  4233,  4171/
data    (gchtab(i), i=0381,0385) /  4172,  4237,  4300,  4235,   849/
data    (gchtab(i), i=0386,0390) /  5006,  5003,  4937,  4872,  4743/
data    (gchtab(i), i=0391,0395) /     0,   666,  4743,   732,  4807/
data    (gchtab(i), i=0396,0400) /   732,  4109,  5133,   455,  4999/
data    (gchtab(i), i=0401,0405) /     0,   220,  4178,    82,  4308/
data    (gchtab(i), i=0406,0410) /  4501,  4693,  4884,  5010,  5071/
data    (gchtab(i), i=0411,0415) /  5069,  5002,  4872,  4679,  4487/
data    (gchtab(i), i=0416,0420) /  4296,  4233,  4171,  4172,  4237/
data    (gchtab(i), i=0421,0425) /  4300,  4235,   597,  4820,  4946/
data    (gchtab(i), i=0426,0430) /  5007,  5005,  4938,  4808,  4679/
data    (gchtab(i), i=0431,0435) /   220,  4956,   219,  4635,  4956/
data    (gchtab(i), i=0436,0440) /     0,   857,  4888,  4951,  5016/
data    (gchtab(i), i=0441,0445) /  5017,  4955,  4828,  4636,  4443/
data    (gchtab(i), i=0446,0450) /  4313,  4247,  4179,  4173,  4234/
data    (gchtab(i), i=0451,0455) /  4360,  4551,  4679,  4872,  5002/
data    (gchtab(i), i=0456,0460) /  5069,  5070,  5009,  4883,  4692/
data    (gchtab(i), i=0461,0465) /  4628,  4435,  4305,  4238,   540/
data    (gchtab(i), i=0466,0470) /  4507,  4377,  4311,  4243,  4237/
data    (gchtab(i), i=0471,0475) /  4298,  4424,  4551,   583,  4808/
data    (gchtab(i), i=0476,0480) /  4938,  5005,  5006,  4945,  4819/
data    (gchtab(i), i=0481,0485) /  4692,     0,    92,  4182,    88/
data    (gchtab(i), i=0486,0490) /  4250,  4380,  4508,  4825,  4953/
data    (gchtab(i), i=0491,0495) /  5018,  5084,   154,  4379,  4507/
data    (gchtab(i), i=0496,0500) /  4825,   988,  5081,  5014,  4753/
data    (gchtab(i), i=0501,0505) /  4687,  4620,  4615,   918,  4689/
data    (gchtab(i), i=0506,0510) /  4623,  4556,  4551,     0,   412/
data    (gchtab(i), i=0511,0515) /  4315,  4249,  4246,  4308,  4499/
data    (gchtab(i), i=0516,0520) /  4755,  4948,  5014,  5017,  4955/
data    (gchtab(i), i=0521,0525) /  4764,  4508,   412,  4379,  4313/
data    (gchtab(i), i=0526,0530) /  4310,  4372,  4499,   659,  4884/
data    (gchtab(i), i=0531,0535) /  4950,  4953,  4891,  4764,   403/
data    (gchtab(i), i=0536,0540) /  4306,  4241,  4175,  4171,  4233/
data    (gchtab(i), i=0541,0545) /  4296,  4487,  4743,  4936,  5001/
data    (gchtab(i), i=0546,0550) /  5067,  5071,  5009,  4946,  4755/
data    (gchtab(i), i=0551,0555) /   403,  4370,  4305,  4239,  4235/
data    (gchtab(i), i=0556,0560) /  4297,  4360,  4487,   647,  4872/
data    (gchtab(i), i=0561,0565) /  4937,  5003,  5007,  4945,  4882/
data    (gchtab(i), i=0566,0570) /  4755,     0,   917,  4946,  4816/
data    (gchtab(i), i=0571,0575) /  4623,  4559,  4368,  4242,  4181/
data    (gchtab(i), i=0576,0580) /  4182,  4249,  4379,  4572,  4700/
data    (gchtab(i), i=0581,0585) /  4891,  5017,  5078,  5072,  5004/
data    (gchtab(i), i=0586,0590) /  4938,  4808,  4615,  4423,  4296/
data    (gchtab(i), i=0591,0595) /  4234,  4235,  4300,  4363,  4298/
data    (gchtab(i), i=0596,0600) /   463,  4432,  4306,  4245,  4246/
data    (gchtab(i), i=0601,0605) /  4313,  4443,  4572,   604,  4827/
data    (gchtab(i), i=0606,0610) /  4953,  5014,  5008,  4940,  4874/
data    (gchtab(i), i=0611,0615) /  4744,  4615,     0,  1247,  5278/
data    (gchtab(i), i=0616,0620) /  5341,  5406,  5407,  5344,  5216/
data    (gchtab(i), i=0621,0625) /  5087,  4957,  4891,  4824,  4756/
data    (gchtab(i), i=0626,0630) /  4616,  4548,  4482,   926,  4956/
data    (gchtab(i), i=0631,0635) /  4888,  4748,  4680,  4613,  4547/
data    (gchtab(i), i=0636,0640) /  4417,  4288,  4160,  4097,  4098/
data    (gchtab(i), i=0641,0645) /  4163,  4226,  4161,     0,   213/
data    (gchtab(i), i=0646,0650) /  4244,  4307,  4372,  4309,   199/
data    (gchtab(i), i=0651,0655) /  4232,  4297,  4360,  4358,  4292/
data    (gchtab(i), i=0656,0660) /  4227,     0,  1180,  4245,  5262/
data    (gchtab(i), i=0661,0665) /   140,  5260,   135,  5255,     0/
data    (gchtab(i), i=0666,0670) /   149,  5397,   144,  5392,   139/
data    (gchtab(i), i=0671,0675) /  5387,     0,   156,  5269,  4238/
data    (gchtab(i), i=0676,0680) /   140,  5260,   135,  5255,     0/
data    (gchtab(i), i=0681,0685) /  1177,  4359,   147,  5395,   141/
data    (gchtab(i), i=0686,0690) /  5389,     0,  1044,  5078,  4951/
data    (gchtab(i), i=0691,0695) /  4759,  4630,  4565,  4498,  4495/
data    (gchtab(i), i=0696,0700) /  4557,  4684,  4876,  5005,  5071/
data    (gchtab(i), i=0701,0705) /   663,  4629,  4562,  4559,  4621/
data    (gchtab(i), i=0706,0710) /  4684,  1047,  5071,  5069,  5196/
data    (gchtab(i), i=0711,0715) /  5324,  5454,  5521,  5523,  5462/
data    (gchtab(i), i=0716,0720) /  5400,  5274,  5147,  4956,  4764/
data    (gchtab(i), i=0721,0725) /  4571,  4442,  4312,  4246,  4179/
data    (gchtab(i), i=0726,0730) /  4176,  4237,  4299,  4425,  4552/
data    (gchtab(i), i=0731,0735) /  4743,  4935,  5128,  5257,  5322/
data    (gchtab(i), i=0736,0740) /  1111,  5135,  5133,  5196,     0/
data    (gchtab(i), i=0741,0745) /   473,  4167,   601,  5063,   537/
data    (gchtab(i), i=0746,0750) /  4999,   205,  4877,     7,  4423/
data    (gchtab(i), i=0751,0755) /   711,  5191,   480,  4447,  4381/
data    (gchtab(i), i=0756,0760) /  4379,  4441,  4568,  4696,  4825/
data    (gchtab(i), i=0761,0765) /  4891,  4893,  4831,  4704,  4576/
data    (gchtab(i), i=0766,0770) /     0,  1295,  5325,  5196,  5068/
data    (gchtab(i), i=0771,0775) /  4941,  4878,  4690,  4627,  4500/
data    (gchtab(i), i=0776,0780) /  4372,  4243,  4177,  4175,  4237/
data    (gchtab(i), i=0781,0785) /  4364,  4492,  4621,  4686,  4882/
data    (gchtab(i), i=0786,0790) /  4947,  5076,  5204,  5331,  5393/
data    (gchtab(i), i=0791,0795) /  5391,     0,    35,     0,   540/
data    (gchtab(i), i=0796,0800) /  4103,   540,  5127,   537,  5063/
data    (gchtab(i), i=0801,0805) /    72,  5064,     7,  5127,     0/
data    (gchtab(i), i=0806,0810) /  1176,  4824,  4567,  4438,  4308/
data    (gchtab(i), i=0811,0815) /  4241,  4239,  4300,  4426,  4553/
data    (gchtab(i), i=0816,0820) /  4808,  5256,   144,  5008,     0/
data    (gchtab(i), i=0821,0825) /   540,  4615,   604,  4679,   407/
data    (gchtab(i), i=0826,0830) /  4310,  4245,  4179,  4176,  4238/
data    (gchtab(i), i=0831,0835) /  4301,  4492,  4812,  5005,  5070/
data    (gchtab(i), i=0836,0840) /  5136,  5139,  5077,  5014,  4823/
data    (gchtab(i), i=0841,0845) /  4503,   407,  4374,  4309,  4243/
data    (gchtab(i), i=0846,0850) /  4240,  4302,  4365,  4492,   716/
data    (gchtab(i), i=0851,0855) /  4941,  5006,  5072,  5075,  5013/
data    (gchtab(i), i=0856,0860) /  4950,  4823,   348,  4892,   327/
data    (gchtab(i), i=0861,0865) /  4871,     0,   220,  4295,   284/
data    (gchtab(i), i=0866,0870) /  4359,    28,  5084,  5078,  5020/
data    (gchtab(i), i=0871,0875) /     7,  4551,     0,   608,  4224/
data    (gchtab(i), i=0876,0880) /   992,  4608,   147,  5139,    77/
data    (gchtab(i), i=0881,0885) /  5069,     0,   160,  4224,   544/
data    (gchtab(i), i=0886,0890) /  4608,     0,    28,  4615,    92/
data    (gchtab(i), i=0891,0895) /  4617,  1052,  4615,    28,  5148/
data    (gchtab(i), i=0896,0900) /    91,  5083,     0,    35,     0/
data    (gchtab(i), i=0901,0905) /   540,  4167,   540,  5063,   537/
data    (gchtab(i), i=0906,0910) /  4999,     7,  4423,   711,  5191/
data    (gchtab(i), i=0911,0915) /     0,   278,  4505,  4630,    83/
data    (gchtab(i), i=0916,0920) /  4504,  4819,   408,  4487,     0/
data    (gchtab(i), i=0921,0925) /   266,  4487,  4618,    77,  4488/
data    (gchtab(i), i=0926,0930) /  4813,   409,  4488,     0,   540/
data    (gchtab(i), i=0931,0935) /  4443,  4313,  4247,  4179,  4176/
data    (gchtab(i), i=0936,0940) /  4236,  4298,  4424,  4615,  4743/
data    (gchtab(i), i=0941,0945) /  4936,  5066,  5132,  5200,  5203/
data    (gchtab(i), i=0946,0950) /  5143,  5081,  4955,  4764,  4636/
data    (gchtab(i), i=0951,0955) /   540,  4507,  4377,  4311,  4243/
data    (gchtab(i), i=0956,0960) /  4240,  4300,  4362,  4488,  4615/
data    (gchtab(i), i=0961,0965) /   647,  4872,  5002,  5068,  5136/
data    (gchtab(i), i=0966,0970) /  5139,  5079,  5017,  4891,  4764/
data    (gchtab(i), i=0971,0975) /     0,   220,  4295,   284,  4359/
data    (gchtab(i), i=0976,0980) /  1052,  5127,  1116,  5191,    28/
data    (gchtab(i), i=0981,0985) /  5404,     7,  4551,   839,  5383/
data    (gchtab(i), i=0986,0990) /     0,   540,  4443,  4313,  4247/
data    (gchtab(i), i=0991,0995) /  4179,  4176,  4236,  4298,  4424/
data    (gchtab(i), i=0996,1000) /  4615,  4743,  4936,  5066,  5132/
data    (gchtab(i), i=1001,1005) /  5200,  5203,  5143,  5081,  4955/
data    (gchtab(i), i=1006,1010) /  4764,  4636,   540,  4507,  4377/
data    (gchtab(i), i=1011,1015) /  4311,  4243,  4240,  4300,  4362/
data    (gchtab(i), i=1016,1020) /  4488,  4615,   647,  4872,  5002/
data    (gchtab(i), i=1021,1025) /  5068,  5136,  5139,  5079,  5017/
data    (gchtab(i), i=1026,1030) /  4891,  4764,   405,  4494,   789/
data    (gchtab(i), i=1031,1035) /  4878,   402,  4882,   401,  4881/
data    (gchtab(i), i=1036,1040) /     0,  1244,  4167,   412,  4634/
data    (gchtab(i), i=1041,1045) /  4632,  4566,  4437,  4309,  4183/
data    (gchtab(i), i=1046,1050) /  4185,  4251,  4380,  4508,  4635/
data    (gchtab(i), i=1051,1055) /  4826,  5018,  5211,  5340,   974/
data    (gchtab(i), i=1056,1060) /  4941,  4875,  4873,  4999,  5127/
data    (gchtab(i), i=1061,1065) /  5256,  5322,  5324,  5198,  5070/
data    (gchtab(i), i=1066,1070) /     0,    92,  4626,  4103,    28/
data    (gchtab(i), i=1071,1075) /  4562,    28,  5084,  5142,  5020/
data    (gchtab(i), i=1076,1080) /    72,  5000,     7,  5063,  5133/
data    (gchtab(i), i=1081,1085) /  4999,     0,   160,  4224,   544/
data    (gchtab(i), i=1086,1090) /  4608,     0,    23,  4121,  4187/
data    (gchtab(i), i=1091,1095) /  4252,  4380,  4443,  4505,  4565/
data    (gchtab(i), i=1096,1100) /  4551,    25,  4251,  4379,  4505/
data    (gchtab(i), i=1101,1105) /   983,  5081,  5019,  4956,  4828/
data    (gchtab(i), i=1106,1110) /  4763,  4697,  4629,  4615,   985/
data    (gchtab(i), i=1111,1115) /  4955,  4827,  4697,   263,  4807/
data    (gchtab(i), i=1116,1120) /     0,   473,  4167,   601,  5063/
data    (gchtab(i), i=1121,1125) /   537,  4999,   205,  4877,     7/
data    (gchtab(i), i=1126,1130) /  4423,   711,  5191,   480,  4447/
data    (gchtab(i), i=1131,1135) /  4381,  4379,  4441,  4568,  4696/
data    (gchtab(i), i=1136,1140) /  4825,  4891,  4893,  4831,  4704/
data    (gchtab(i), i=1141,1145) /  4576,     0,    74,  4231,  4487/
data    (gchtab(i), i=1146,1150) /  4363,  4239,  4178,  4182,  4249/
data    (gchtab(i), i=1151,1155) /  4379,  4572,  4828,  5019,  5145/
data    (gchtab(i), i=1156,1160) /  5206,  5202,  5135,  5003,  4871/
data    (gchtab(i), i=1161,1165) /  5127,  5194,   267,  4302,  4242/
data    (gchtab(i), i=1166,1170) /  4246,  4313,  4443,  4572,   732/
data    (gchtab(i), i=1171,1175) /  4955,  5081,  5142,  5138,  5070/
data    (gchtab(i), i=1176,1180) /  5003,   136,  4424,   840,  5128/
data    (gchtab(i), i=1181,1185) /     0,   157,  4184,  1117,  5144/
data    (gchtab(i), i=1186,1190) /   404,  4431,   852,  4879,   139/
data    (gchtab(i), i=1191,1195) /  4166,  1099,  5126,   155,  5147/
data    (gchtab(i), i=1196,1200) /   154,  5146,   402,  4882,   401/
data    (gchtab(i), i=1201,1205) /  4881,   137,  5129,   136,  5128/
data    (gchtab(i), i=1206,1210) /     0,   604,  4679,   668,  4743/
data    (gchtab(i), i=1211,1215) /    21,  4182,  4309,  4369,  4431/
data    (gchtab(i), i=1216,1220) /  4494,  4621,    86,  4245,  4305/
data    (gchtab(i), i=1221,1225) /  4367,  4430,  4621,  4813,  5006/
data    (gchtab(i), i=1226,1230) /  5071,  5137,  5205,  5270,   717/
data    (gchtab(i), i=1231,1235) /  4942,  5007,  5073,  5141,  5270/
data    (gchtab(i), i=1236,1240) /  5333,   412,  4956,   391,  4935/
data    (gchtab(i), i=1241,1245) /     0,    35,     0,   160,  4224/
data    (gchtab(i), i=1246,1250) /   224,  4288,   160,  4704,   128/
data    (gchtab(i), i=1251,1255) /  4672,     0,    28,  4868,     0/
data    (gchtab(i), i=1256,1260) /   480,  4544,   544,  4608,    96/
data    (gchtab(i), i=1261,1265) /  4640,    64,  4608,     0,    35/
data    (gchtab(i), i=1266,1270) /     0,  1106,  5392,  5198,   917/
data    (gchtab(i), i=1271,1275) /  5328,  5003,   144,  5328,     0/
data    (gchtab(i), i=1276,1280) /    85,  4437,  4809,   277,  4807/
data    (gchtab(i), i=1281,1285) /  1312,  4807,     0,   533,  4436/
data    (gchtab(i), i=1286,1290) /  4306,  4240,  4173,  4170,  4232/
data    (gchtab(i), i=1291,1295) /  4423,  4551,  4680,  4875,  5006/
data    (gchtab(i), i=1296,1300) /  5138,  5205,   533,  4500,  4370/
data    (gchtab(i), i=1301,1305) /  4304,  4237,  4234,  4296,  4423/
data    (gchtab(i), i=1306,1310) /   533,  4757,  4884,  4946,  5066/
data    (gchtab(i), i=1311,1315) /  5128,  5191,   661,  4820,  4882/
data    (gchtab(i), i=1316,1320) /  5002,  5064,  5191,  5255,     0/
data    (gchtab(i), i=1321,1325) /   732,  4635,  4505,  4373,  4306/
data    (gchtab(i), i=1326,1330) /  4238,  4168,  4096,   732,  4699/
data    (gchtab(i), i=1331,1335) /  4569,  4437,  4370,  4302,  4232/
data    (gchtab(i), i=1336,1340) /  4160,   732,  4956,  5083,  5146/
data    (gchtab(i), i=1341,1345) /  5143,  5077,  5012,  4819,  4563/
data    (gchtab(i), i=1346,1350) /   860,  5082,  5079,  5013,  4948/
data    (gchtab(i), i=1351,1355) /  4819,   467,  4818,  4944,  5006/
data    (gchtab(i), i=1356,1360) /  5003,  4937,  4872,  4679,  4551/
data    (gchtab(i), i=1361,1365) /  4424,  4361,  4300,   467,  4754/
data    (gchtab(i), i=1366,1370) /  4880,  4942,  4939,  4873,  4808/
data    (gchtab(i), i=1371,1375) /  4679,     0,    21,  4245,  4372/
data    (gchtab(i), i=1376,1380) /  4434,  4739,  4801,  4864,   149/
data    (gchtab(i), i=1381,1385) /  4308,  4370,  4675,  4737,  4864/
data    (gchtab(i), i=1386,1390) /  4992,   981,  5011,  4880,  4229/
data    (gchtab(i), i=1391,1395) /  4098,  4096,     0,   724,  4693/
data    (gchtab(i), i=1396,1400) /  4565,  4372,  4241,  4174,  4171/
data    (gchtab(i), i=1401,1405) /  4233,  4296,  4423,  4551,  4744/
data    (gchtab(i), i=1406,1410) /  4875,  4942,  4945,  4883,  4632/
data    (gchtab(i), i=1411,1415) /  4570,  4572,  4637,  4765,  4892/
data    (gchtab(i), i=1416,1420) /  5018,   469,  4436,  4305,  4238/
data    (gchtab(i), i=1421,1425) /  4234,  4296,   455,  4680,  4811/
data    (gchtab(i), i=1426,1430) /  4878,  4882,  4820,  4695,  4633/
data    (gchtab(i), i=1431,1435) /  4635,  4700,  4828,  5018,     0/
data    (gchtab(i), i=1436,1440) /   850,  4820,  4693,  4437,  4308/
data    (gchtab(i), i=1441,1445) /  4306,  4432,  4623,   341,  4372/
data    (gchtab(i), i=1446,1450) /  4370,  4496,  4623,   527,  4302/
data    (gchtab(i), i=1451,1455) /  4172,  4170,  4232,  4423,  4615/
data    (gchtab(i), i=1456,1460) /  4744,  4874,   527,  4366,  4236/
data    (gchtab(i), i=1461,1465) /  4234,  4296,  4423,     0,   404/
data    (gchtab(i), i=1466,1470) /  4371,  4241,  4174,  4171,  4233/
data    (gchtab(i), i=1471,1475) /  4296,  4423,  4615,  4808,  5002/
data    (gchtab(i), i=1476,1480) /  5133,  5200,  5203,  5077,  4949/
data    (gchtab(i), i=1481,1485) /  4819,  4687,  4554,  4352,    75/
data    (gchtab(i), i=1486,1490) /  4297,  4424,  4616,  4809,  5003/
data    (gchtab(i), i=1491,1495) /  5133,  1107,  5076,  4948,  4818/
data    (gchtab(i), i=1496,1500) /  4687,  4553,  4416,     0,   277/
data    (gchtab(i), i=1501,1505) /  4231,   341,  4367,  4298,  4231/
data    (gchtab(i), i=1506,1510) /   981,  5009,  4877,  1045,  5074/
data    (gchtab(i), i=1511,1515) /  5008,  4877,  4747,  4553,  4424/
data    (gchtab(i), i=1516,1520) /  4231,    85,  4437,     0,    17/
data    (gchtab(i), i=1521,1525) /  4115,  4245,  4437,  4500,  4498/
data    (gchtab(i), i=1526,1530) /  4430,  4295,   277,  4436,  4434/
data    (gchtab(i), i=1531,1535) /  4366,  4231,   334,  4562,  4692/
data    (gchtab(i), i=1536,1540) /  4821,  4949,  5076,  5139,  5136/
data    (gchtab(i), i=1541,1545) /  5067,  4864,   853,  5075,  5072/
data    (gchtab(i), i=1546,1550) /  5003,  4800,     0,   277,  4238/
data    (gchtab(i), i=1551,1555) /  4170,  4168,  4231,  4423,  4553/
data    (gchtab(i), i=1556,1560) /  4619,   341,  4302,  4234,  4232/
data    (gchtab(i), i=1561,1565) /  4295,     0,   848,  4883,  4820/
data    (gchtab(i), i=1566,1570) /  4693,  4565,  4372,  4241,  4174/
data    (gchtab(i), i=1571,1575) /  4171,  4233,  4296,  4423,  4551/
data    (gchtab(i), i=1576,1580) /  4744,  4874,  4941,  5010,  5015/
data    (gchtab(i), i=1581,1585) /  4954,  4891,  4764,  4572,  4443/
data    (gchtab(i), i=1586,1590) /  4378,  4377,  4441,  4442,   469/
data    (gchtab(i), i=1591,1595) /  4436,  4305,  4238,  4234,  4296/
data    (gchtab(i), i=1596,1600) /   455,  4680,  4810,  4877,  4946/
data    (gchtab(i), i=1601,1605) /  4951,  4890,  4764,     0,   277/
data    (gchtab(i), i=1606,1610) /  4103,   341,  4167,   917,  5076/
data    (gchtab(i), i=1611,1615) /  5140,  5077,  4949,  4820,  4560/
data    (gchtab(i), i=1616,1620) /  4431,  4303,   335,  4558,  4680/
data    (gchtab(i), i=1621,1625) /  4743,   335,  4494,  4616,  4679/
data    (gchtab(i), i=1626,1630) /  4807,  4936,  5067,     0,    92/
data    (gchtab(i), i=1631,1635) /  4316,  4443,  4506,  4568,  4938/
data    (gchtab(i), i=1636,1640) /  5000,  5063,   220,  4442,  4504/
data    (gchtab(i), i=1641,1645) /  4874,  4936,  5063,  5127,   533/
data    (gchtab(i), i=1646,1650) /  4103,   533,  4167,     0,   341/
data    (gchtab(i), i=1651,1655) /  4096,   405,  4096,   338,  4364/
data    (gchtab(i), i=1656,1660) /  4361,  4487,  4615,  4744,  4874/
data    (gchtab(i), i=1661,1665) /  5005,  1045,  4938,  4936,  4999/
data    (gchtab(i), i=1666,1670) /  5191,  5321,  5387,  1109,  5002/
data    (gchtab(i), i=1671,1675) /  5000,  5063,     0,   277,  4231/
data    (gchtab(i), i=1676,1680) /   341,  4367,  4298,  4231,   981/
data    (gchtab(i), i=1681,1685) /  5009,  4877,  1045,  5074,  5008/
data    (gchtab(i), i=1686,1690) /  4877,  4747,  4553,  4424,  4231/
data    (gchtab(i), i=1691,1695) /    85,  4437,     0,   469,  4372/
data    (gchtab(i), i=1696,1700) /  4241,  4174,  4171,  4233,  4296/
data    (gchtab(i), i=1701,1705) /  4423,  4551,  4744,  4875,  4942/
data    (gchtab(i), i=1706,1710) /  4945,  4883,  4820,  4693,  4565/
data    (gchtab(i), i=1711,1715) /   469,  4436,  4305,  4238,  4234/
data    (gchtab(i), i=1716,1720) /  4296,   455,  4680,  4811,  4878/
data    (gchtab(i), i=1721,1725) /  4882,  4820,     0,   468,  4295/
data    (gchtab(i), i=1726,1730) /   468,  4359,   852,  4935,   852/
data    (gchtab(i), i=1731,1735) /  4999,    18,  4244,  4437,  5269/
data    (gchtab(i), i=1736,1740) /    18,  4243,  4436,  5268,     0/
data    (gchtab(i), i=1741,1745) /    17,  4115,  4245,  4437,  4500/
data    (gchtab(i), i=1746,1750) /  4498,  4429,  4426,  4488,  4551/
data    (gchtab(i), i=1751,1755) /   277,  4436,  4434,  4365,  4362/
data    (gchtab(i), i=1756,1760) /  4424,  4551,  4679,  4808,  4938/
data    (gchtab(i), i=1761,1765) /  5069,  5136,  5205,  5209,  5147/
data    (gchtab(i), i=1766,1770) /  5020,  4892,  4762,  4760,  4821/
data    (gchtab(i), i=1771,1775) /  4946,  5072,  5262,   712,  4939/
data    (gchtab(i), i=1776,1780) /  5005,  5072,  5141,  5145,  5083/
data    (gchtab(i), i=1781,1785) /  5020,     0,   140,  4297,  4360/
data    (gchtab(i), i=1786,1790) /  4487,  4615,  4808,  4939,  5006/
data    (gchtab(i), i=1791,1795) /  5009,  4947,  4884,  4757,  4629/
data    (gchtab(i), i=1796,1800) /  4436,  4305,  4238,  4096,   519/
data    (gchtab(i), i=1801,1805) /  4744,  4875,  4942,  4946,  4884/
data    (gchtab(i), i=1806,1810) /   533,  4500,  4369,  4302,  4096/
data    (gchtab(i), i=1811,1815) /     0,  1109,  4565,  4372,  4241/
data    (gchtab(i), i=1816,1820) /  4174,  4171,  4233,  4296,  4423/
data    (gchtab(i), i=1821,1825) /  4551,  4744,  4875,  4942,  4945/
data    (gchtab(i), i=1826,1830) /  4883,  4820,  4693,   469,  4436/
data    (gchtab(i), i=1831,1835) /  4305,  4238,  4234,  4296,   455/
data    (gchtab(i), i=1836,1840) /  4680,  4811,  4878,  4882,  4820/
data    (gchtab(i), i=1841,1845) /   724,  5204,     0,   596,  4487/
data    (gchtab(i), i=1846,1850) /   596,  4551,    18,  4244,  4437/
data    (gchtab(i), i=1851,1855) /  5141,    18,  4243,  4436,  5140/
data    (gchtab(i), i=1856,1860) /     0,    17,  4115,  4245,  4437/
data    (gchtab(i), i=1861,1865) /  4500,  4498,  4364,  4361,  4487/
data    (gchtab(i), i=1866,1870) /   277,  4436,  4434,  4300,  4297/
data    (gchtab(i), i=1871,1875) /  4360,  4487,  4551,  4744,  4874/
data    (gchtab(i), i=1876,1880) /  5005,  5072,  5075,  5013,  4948/
data    (gchtab(i), i=1881,1885) /  5011,  5072,   909,  5075,     0/
data    (gchtab(i), i=1886,1890) /    35,     0,   145,  4371,  4564/
data    (gchtab(i), i=1891,1895) /  4501,  4372,  4241,  4174,  4171/
data    (gchtab(i), i=1896,1900) /  4232,  4295,  4423,  4552,  4683/
data    (gchtab(i), i=1901,1905) /  4750,    75,  4233,  4296,  4424/
data    (gchtab(i), i=1906,1910) /  4553,  4683,   590,  4683,  4744/
data    (gchtab(i), i=1911,1915) /  4807,  4935,  5064,  5195,  5262/
data    (gchtab(i), i=1916,1920) /  5265,  5204,  5141,  5076,  5203/
data    (gchtab(i), i=1921,1925) /  5265,   587,  4745,  4808,  4936/
data    (gchtab(i), i=1926,1930) /  5065,  5195,     0,   604,  4571/
data    (gchtab(i), i=1931,1935) /  4506,  4505,  4568,  4759,  4951/
data    (gchtab(i), i=1936,1940) /   663,  4502,  4373,  4307,  4305/
data    (gchtab(i), i=1941,1945) /  4431,  4622,  4814,   663,  4566/
data    (gchtab(i), i=1946,1950) /  4437,  4371,  4369,  4495,  4622/
data    (gchtab(i), i=1951,1955) /   526,  4365,  4236,  4170,  4168/
data    (gchtab(i), i=1956,1960) /  4294,  4612,  4675,  4673,  4544/
data    (gchtab(i), i=1961,1965) /  4416,   526,  4429,  4300,  4234/
data    (gchtab(i), i=1966,1970) /  4232,  4358,  4612,     0,   860/
data    (gchtab(i), i=1971,1975) /  4544,   924,  4480,    17,  4115/
data    (gchtab(i), i=1976,1980) /  4245,  4437,  4500,  4498,  4429/
data    (gchtab(i), i=1981,1985) /  4426,  4552,  4744,  4873,  5068/
data    (gchtab(i), i=1986,1990) /  5199,   277,  4436,  4434,  4365/
data    (gchtab(i), i=1991,1995) /  4362,  4424,  4551,  4743,  4872/
data    (gchtab(i), i=1996,2000) /  5002,  5133,  5199,  5333,     0/
data    (gchtab(i), i=2001,2005) /   604,  4571,  4506,  4505,  4568/
data    (gchtab(i), i=2006,2010) /  4759,  5079,  5080,  4887,  4629/
data    (gchtab(i), i=2011,2015) /  4435,  4240,  4173,  4171,  4233/
data    (gchtab(i), i=2016,2020) /  4423,  4613,  4675,  4673,  4608/
data    (gchtab(i), i=2021,2025) /  4480,  4417,   662,  4499,  4304/
data    (gchtab(i), i=2026,2030) /  4237,  4235,  4297,  4423,     0/
data    (gchtab(i), i=2031,2035) /   480,  4447,  4382,  4316,  4314/
data    (gchtab(i), i=2036,2040) /  4376,  4439,  4501,  4499,  4369/
data    (gchtab(i), i=2041,2045) /   351,  4381,  4379,  4441,  4504/
data    (gchtab(i), i=2046,2050) /  4566,  4564,  4498,  4240,  4494/
data    (gchtab(i), i=2051,2055) /  4556,  4554,  4488,  4423,  4357/
data    (gchtab(i), i=2056,2060) /  4355,  4417,   271,  4493,  4491/
data    (gchtab(i), i=2061,2065) /  4425,  4360,  4294,  4292,  4354/
data    (gchtab(i), i=2066,2070) /  4417,  4544,     0,   160,  4224/
data    (gchtab(i), i=2071,2075) /   544,  4608,     0,   224,  4447/
data    (gchtab(i), i=2076,2080) /  4510,  4572,  4570,  4504,  4439/
data    (gchtab(i), i=2081,2085) /  4373,  4371,  4497,   351,  4509/
data    (gchtab(i), i=2086,2090) /  4507,  4441,  4376,  4310,  4308/
data    (gchtab(i), i=2091,2095) /  4370,  4624,  4366,  4300,  4298/
data    (gchtab(i), i=2096,2100) /  4360,  4423,  4485,  4483,  4417/
data    (gchtab(i), i=2101,2105) /   399,  4365,  4363,  4425,  4488/
data    (gchtab(i), i=2106,2110) /  4550,  4548,  4482,  4417,  4288/
data    (gchtab(i), i=2111,2115) /     0,   338,  4240,  4430,   533/
data    (gchtab(i), i=2116,2120) /  4304,  4619,   208,  5392,     0/
data    (gchtab(i), i=2121,2125) /   284,  4251,  4185,  4183,  4245/
data    (gchtab(i), i=2126,2130) /  4372,  4500,  4629,  4695,  4697/
data    (gchtab(i), i=2131,2134) /  4635,  4508,  4380,     0/

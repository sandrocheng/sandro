public final class fm
{
  public static boolean a = false;
  public static boolean b = true;
  public static boolean c;

  // ERROR //
  static
  {
    // Byte code:
    //   0: iconst_0
    //   1: putstatic 12	fm:a	Z
    //   4: iconst_0
    //   5: putstatic 14	fm:b	Z
    //   8: getstatic 20	android/os/Build:MODEL	Ljava/lang/String;
    //   11: astore_0
    //   12: getstatic 23	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull +37 -> 54
    //   20: aload_1
    //   21: invokevirtual 29	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   24: ldc 31
    //   26: invokevirtual 35	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   29: ifge +25 -> 54
    //   32: aload_1
    //   33: invokevirtual 29	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   36: ldc 37
    //   38: invokevirtual 35	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   41: ifge +13 -> 54
    //   44: aload_1
    //   45: invokevirtual 29	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   48: ldc 39
    //   50: invokevirtual 35	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   53: pop
    //   54: ldc 41
    //   56: aload_0
    //   57: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   60: ifeq +8 -> 68
    //   63: iconst_1
    //   64: putstatic 14	fm:b	Z
    //   67: return
    //   68: ldc 47
    //   70: aload_0
    //   71: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   74: ifeq +10 -> 84
    //   77: iconst_1
    //   78: putstatic 12	fm:a	Z
    //   81: goto -14 -> 67
    //   84: ldc 49
    //   86: aload_0
    //   87: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   90: ifne -23 -> 67
    //   93: ldc 51
    //   95: aload_0
    //   96: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   99: ifne -32 -> 67
    //   102: ldc 53
    //   104: aload_0
    //   105: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   108: ifeq +10 -> 118
    //   111: iconst_1
    //   112: putstatic 14	fm:b	Z
    //   115: goto -48 -> 67
    //   118: ldc 55
    //   120: aload_0
    //   121: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   124: ifne -57 -> 67
    //   127: ldc 57
    //   129: aload_0
    //   130: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   133: ifne -66 -> 67
    //   136: ldc 59
    //   138: aload_0
    //   139: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   142: ifne -75 -> 67
    //   145: ldc 61
    //   147: aload_0
    //   148: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   151: ifne -84 -> 67
    //   154: ldc 61
    //   156: aload_0
    //   157: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   160: ifne -93 -> 67
    //   163: ldc 63
    //   165: aload_0
    //   166: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   169: ifne +12 -> 181
    //   172: ldc 65
    //   174: aload_0
    //   175: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   178: ifeq +10 -> 188
    //   181: iconst_1
    //   182: putstatic 14	fm:b	Z
    //   185: goto -118 -> 67
    //   188: ldc 67
    //   190: aload_0
    //   191: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   194: ifne -127 -> 67
    //   197: ldc 69
    //   199: aload_0
    //   200: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   203: ifne -136 -> 67
    //   206: ldc 71
    //   208: aload_0
    //   209: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   212: ifne -145 -> 67
    //   215: ldc 73
    //   217: aload_0
    //   218: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   221: ifeq +10 -> 231
    //   224: iconst_1
    //   225: putstatic 14	fm:b	Z
    //   228: goto -161 -> 67
    //   231: ldc 75
    //   233: aload_0
    //   234: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   237: ifeq +10 -> 247
    //   240: iconst_1
    //   241: putstatic 14	fm:b	Z
    //   244: goto -177 -> 67
    //   247: ldc 77
    //   249: aload_0
    //   250: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   253: ifne -186 -> 67
    //   256: ldc 79
    //   258: aload_0
    //   259: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   262: ifne -195 -> 67
    //   265: ldc 81
    //   267: aload_0
    //   268: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   271: ifne -204 -> 67
    //   274: ldc 83
    //   276: aload_0
    //   277: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   280: ifne -213 -> 67
    //   283: ldc 85
    //   285: aload_0
    //   286: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   289: ifeq +10 -> 299
    //   292: iconst_1
    //   293: putstatic 14	fm:b	Z
    //   296: goto -229 -> 67
    //   299: ldc 87
    //   301: aload_0
    //   302: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   305: ifne -238 -> 67
    //   308: ldc 89
    //   310: aload_0
    //   311: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   314: ifeq +10 -> 324
    //   317: iconst_1
    //   318: putstatic 14	fm:b	Z
    //   321: goto -254 -> 67
    //   324: ldc 91
    //   326: aload_0
    //   327: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   330: ifne -263 -> 67
    //   333: ldc 93
    //   335: aload_0
    //   336: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   339: ifeq +10 -> 349
    //   342: iconst_1
    //   343: putstatic 14	fm:b	Z
    //   346: goto -279 -> 67
    //   349: ldc 95
    //   351: aload_0
    //   352: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   355: ifne -288 -> 67
    //   358: ldc 97
    //   360: aload_0
    //   361: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   364: ifne -297 -> 67
    //   367: ldc 99
    //   369: aload_0
    //   370: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   373: ifne -306 -> 67
    //   376: ldc 101
    //   378: aload_0
    //   379: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   382: ifeq +10 -> 392
    //   385: iconst_1
    //   386: putstatic 14	fm:b	Z
    //   389: goto -322 -> 67
    //   392: ldc 103
    //   394: aload_0
    //   395: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   398: ifne -331 -> 67
    //   401: ldc 105
    //   403: aload_0
    //   404: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   407: ifne -340 -> 67
    //   410: ldc 107
    //   412: aload_0
    //   413: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   416: ifne -349 -> 67
    //   419: ldc 109
    //   421: aload_0
    //   422: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   425: ifne -358 -> 67
    //   428: ldc 111
    //   430: aload_0
    //   431: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   434: ifne -367 -> 67
    //   437: ldc 113
    //   439: aload_0
    //   440: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   443: ifne -376 -> 67
    //   446: ldc 115
    //   448: aload_0
    //   449: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   452: ifne -385 -> 67
    //   455: ldc 117
    //   457: aload_0
    //   458: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   461: ifne -394 -> 67
    //   464: ldc 119
    //   466: aload_0
    //   467: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   470: ifne -403 -> 67
    //   473: ldc 121
    //   475: aload_0
    //   476: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   479: ifne -412 -> 67
    //   482: ldc 123
    //   484: aload_0
    //   485: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   488: ifne -421 -> 67
    //   491: ldc 125
    //   493: aload_0
    //   494: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   497: ifeq +10 -> 507
    //   500: iconst_1
    //   501: putstatic 14	fm:b	Z
    //   504: goto -437 -> 67
    //   507: ldc 127
    //   509: aload_0
    //   510: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   513: ifne -446 -> 67
    //   516: ldc 129
    //   518: aload_0
    //   519: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   522: ifne -455 -> 67
    //   525: ldc 131
    //   527: aload_0
    //   528: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   531: ifne -464 -> 67
    //   534: ldc 133
    //   536: aload_0
    //   537: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   540: ifne -473 -> 67
    //   543: ldc 135
    //   545: aload_0
    //   546: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   549: ifeq +10 -> 559
    //   552: iconst_1
    //   553: putstatic 14	fm:b	Z
    //   556: goto -489 -> 67
    //   559: ldc 137
    //   561: aload_0
    //   562: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   565: ifeq +10 -> 575
    //   568: iconst_1
    //   569: putstatic 14	fm:b	Z
    //   572: goto -505 -> 67
    //   575: ldc 139
    //   577: aload_0
    //   578: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   581: ifne -514 -> 67
    //   584: ldc 141
    //   586: aload_0
    //   587: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   590: ifeq +10 -> 600
    //   593: iconst_1
    //   594: putstatic 14	fm:b	Z
    //   597: goto -530 -> 67
    //   600: ldc 143
    //   602: aload_0
    //   603: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   606: ifeq +10 -> 616
    //   609: iconst_1
    //   610: putstatic 14	fm:b	Z
    //   613: goto -546 -> 67
    //   616: ldc 145
    //   618: aload_0
    //   619: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   622: ifeq +14 -> 636
    //   625: iconst_1
    //   626: putstatic 14	fm:b	Z
    //   629: iconst_1
    //   630: putstatic 14	fm:b	Z
    //   633: goto -566 -> 67
    //   636: ldc 147
    //   638: aload_0
    //   639: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   642: ifne -575 -> 67
    //   645: ldc 149
    //   647: aload_0
    //   648: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   651: ifeq +10 -> 661
    //   654: iconst_1
    //   655: putstatic 14	fm:b	Z
    //   658: goto -591 -> 67
    //   661: ldc 151
    //   663: aload_0
    //   664: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   667: ifne -600 -> 67
    //   670: ldc 153
    //   672: aload_0
    //   673: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   676: ifne -609 -> 67
    //   679: ldc 155
    //   681: aload_0
    //   682: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   685: ifne -618 -> 67
    //   688: ldc 157
    //   690: aload_0
    //   691: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   694: ifne -627 -> 67
    //   697: ldc 159
    //   699: aload_0
    //   700: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   703: ifeq +10 -> 713
    //   706: iconst_1
    //   707: putstatic 14	fm:b	Z
    //   710: goto -643 -> 67
    //   713: ldc 161
    //   715: aload_0
    //   716: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   719: ifne -652 -> 67
    //   722: ldc 163
    //   724: aload_0
    //   725: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   728: ifeq +10 -> 738
    //   731: iconst_1
    //   732: putstatic 14	fm:b	Z
    //   735: goto -668 -> 67
    //   738: ldc 165
    //   740: aload_0
    //   741: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   744: ifne -677 -> 67
    //   747: ldc 167
    //   749: aload_0
    //   750: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   753: ifeq +10 -> 763
    //   756: iconst_1
    //   757: putstatic 14	fm:b	Z
    //   760: goto -693 -> 67
    //   763: aload_1
    //   764: invokestatic 177	com/tencent/tmsecure/utils/StringUtil:assertNotNullString	(Ljava/lang/String;)Ljava/lang/String;
    //   767: invokevirtual 29	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   770: ldc 179
    //   772: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   775: ifne +18 -> 793
    //   778: aload_1
    //   779: invokestatic 177	com/tencent/tmsecure/utils/StringUtil:assertNotNullString	(Ljava/lang/String;)Ljava/lang/String;
    //   782: invokevirtual 29	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   785: ldc 181
    //   787: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   790: ifeq +24 -> 814
    //   793: ldc 183
    //   795: aload_0
    //   796: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   799: ifne -732 -> 67
    //   802: ldc 185
    //   804: aload_0
    //   805: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   808: ifeq -741 -> 67
    //   811: goto -744 -> 67
    //   814: ldc 187
    //   816: aload_0
    //   817: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   820: ifne -753 -> 67
    //   823: ldc 189
    //   825: aload_0
    //   826: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   829: ifne -762 -> 67
    //   832: ldc 191
    //   834: aload_0
    //   835: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   838: ifne -771 -> 67
    //   841: ldc 193
    //   843: aload_0
    //   844: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   847: ifne -780 -> 67
    //   850: ldc 195
    //   852: aload_0
    //   853: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   856: ifne -789 -> 67
    //   859: ldc 197
    //   861: aload_0
    //   862: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   865: ifeq +10 -> 875
    //   868: iconst_1
    //   869: putstatic 14	fm:b	Z
    //   872: goto -805 -> 67
    //   875: ldc 199
    //   877: aload_0
    //   878: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   881: ifne -814 -> 67
    //   884: ldc 201
    //   886: aload_0
    //   887: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   890: ifne -823 -> 67
    //   893: ldc 203
    //   895: aload_0
    //   896: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   899: ifne -832 -> 67
    //   902: ldc 205
    //   904: aload_0
    //   905: invokevirtual 171	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   908: ifne -841 -> 67
    //   911: ldc 207
    //   913: aload_0
    //   914: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   917: ifeq +10 -> 927
    //   920: iconst_1
    //   921: putstatic 14	fm:b	Z
    //   924: goto -857 -> 67
    //   927: ldc 193
    //   929: aload_0
    //   930: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   933: ifne -866 -> 67
    //   936: ldc 209
    //   938: aload_0
    //   939: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   942: ifne -875 -> 67
    //   945: ldc 211
    //   947: aload_0
    //   948: invokevirtual 45	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   951: ifeq -884 -> 67
    //   954: iconst_1
    //   955: putstatic 14	fm:b	Z
    //   958: goto -891 -> 67
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fm
 * JD-Core Version:    0.6.2
 */
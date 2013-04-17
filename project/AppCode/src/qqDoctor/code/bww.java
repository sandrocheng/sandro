import com.tencent.tmsecure.module.networkload.NetworkLoadTask;
import java.util.HashMap;

final class bww<T extends NetworkLoadTask> extends Thread
{
  private static final HashMap<String, byte[]> a = new HashMap();
  private static final short[] b = { 8, 64, 128 };
  private T c;
  private int d = 307200;
  private boolean e = true;
  private btg f = null;
  private bwv<T> g;
  private String h;
  private byte[] i;
  private boolean j;
  private byte k = 0;

  public bww(T paramT, boolean paramBoolean, String paramString)
  {
    this.c = paramT;
    this.h = paramString;
    this.j = paramBoolean;
    synchronized (a)
    {
      byte[] arrayOfByte = (byte[])a.get(paramT.mName);
      if (arrayOfByte == null)
      {
        arrayOfByte = new byte[0];
        a.put(paramT.mName, arrayOfByte);
      }
      this.i = arrayOfByte;
      return;
    }
  }

  // ERROR //
  private void a(java.io.FileOutputStream paramFileOutputStream)
    throws com.tencent.tmsecure.exception.NetWorkException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: lconst_0
    //   3: lstore_3
    //   4: getstatic 43	bww:b	[S
    //   7: iconst_1
    //   8: saload
    //   9: bipush 10
    //   11: ishl
    //   12: newarray byte
    //   14: astore 12
    //   16: aload_0
    //   17: getfield 52	bww:f	Lbtg;
    //   20: ifnonnull +49 -> 69
    //   23: aload_0
    //   24: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   27: getfield 88	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isOnChangeRetry	Z
    //   30: ifeq +130 -> 160
    //   33: aload_0
    //   34: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   37: getfield 91	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mChangeUrl	Ljava/lang/String;
    //   40: ifnull +120 -> 160
    //   43: aload_0
    //   44: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   47: getfield 91	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mChangeUrl	Ljava/lang/String;
    //   50: astore 27
    //   52: aload_0
    //   53: aload 27
    //   55: invokestatic 96	btg:a	(Ljava/lang/String;)Lbtg;
    //   58: putfield 52	bww:f	Lbtg;
    //   61: aload_0
    //   62: getfield 52	bww:f	Lbtg;
    //   65: invokevirtual 99	btg:a	()I
    //   68: pop
    //   69: aload_0
    //   70: getfield 52	bww:f	Lbtg;
    //   73: invokevirtual 101	btg:c	()I
    //   76: sipush 200
    //   79: if_icmpeq +93 -> 172
    //   82: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   85: dup
    //   86: sipush -3000
    //   89: aload_0
    //   90: getfield 52	bww:f	Lbtg;
    //   93: invokevirtual 101	btg:c	()I
    //   96: iadd
    //   97: new 103	java/lang/StringBuilder
    //   100: dup
    //   101: ldc 105
    //   103: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: aload_0
    //   107: getfield 52	bww:f	Lbtg;
    //   110: invokevirtual 101	btg:c	()I
    //   113: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   116: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   122: athrow
    //   123: astore 11
    //   125: aload 11
    //   127: athrow
    //   128: astore 7
    //   130: aload_2
    //   131: astore 6
    //   133: aload 6
    //   135: ifnull +8 -> 143
    //   138: aload 6
    //   140: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   143: lload_3
    //   144: lconst_0
    //   145: lcmp
    //   146: ifle +11 -> 157
    //   149: lload_3
    //   150: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   153: ladd
    //   154: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   157: aload 7
    //   159: athrow
    //   160: aload_0
    //   161: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   164: getfield 137	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mUrl	Ljava/lang/String;
    //   167: astore 27
    //   169: goto -117 -> 52
    //   172: new 121	java/io/BufferedInputStream
    //   175: dup
    //   176: aload_0
    //   177: getfield 52	bww:f	Lbtg;
    //   180: invokevirtual 140	btg:b	()Ljava/io/InputStream;
    //   183: aload 12
    //   185: arraylength
    //   186: invokespecial 143	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   189: astore 6
    //   191: invokestatic 148	java/lang/System:currentTimeMillis	()J
    //   194: lstore 13
    //   196: aload_0
    //   197: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   200: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   203: lstore 15
    //   205: invokestatic 158	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   208: getstatic 164	QQPIM/ConnectType:CT_WIFI	LQQPIM/ConnectType;
    //   211: if_acmpeq +40 -> 251
    //   214: iconst_1
    //   215: istore 17
    //   217: goto +621 -> 838
    //   220: aload_0
    //   221: getfield 50	bww:e	Z
    //   224: istore 20
    //   226: iload 20
    //   228: ifne +29 -> 257
    //   231: aload 6
    //   233: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   236: lload_3
    //   237: lconst_0
    //   238: lcmp
    //   239: ifle +11 -> 250
    //   242: lload_3
    //   243: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   246: ladd
    //   247: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   250: return
    //   251: iconst_0
    //   252: istore 17
    //   254: goto +584 -> 838
    //   257: aload_0
    //   258: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   261: getfield 167	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mNetworkType	LQQPIM/ConnectType;
    //   264: invokestatic 158	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   267: if_acmpeq +16 -> 283
    //   270: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   273: dup
    //   274: sipush -7052
    //   277: ldc 169
    //   279: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   282: athrow
    //   283: aload 6
    //   285: aload 18
    //   287: invokevirtual 173	java/io/BufferedInputStream:read	([B)I
    //   290: istore 21
    //   292: iload 21
    //   294: ifgt +87 -> 381
    //   297: aload_0
    //   298: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   301: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   304: aload_0
    //   305: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   308: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   311: lcmp
    //   312: ifle -81 -> 231
    //   315: aload_0
    //   316: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   319: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   322: lconst_0
    //   323: lcmp
    //   324: ifle -93 -> 231
    //   327: aload_0
    //   328: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   331: aload_0
    //   332: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   335: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   338: putfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   341: goto -110 -> 231
    //   344: astore 5
    //   346: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   349: dup
    //   350: bipush 197
    //   352: new 103	java/lang/StringBuilder
    //   355: dup
    //   356: ldc 178
    //   358: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   361: aload 5
    //   363: invokevirtual 181	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   366: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   369: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   372: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   375: athrow
    //   376: astore 7
    //   378: goto -245 -> 133
    //   381: aload_1
    //   382: aload 18
    //   384: iconst_0
    //   385: iload 21
    //   387: invokevirtual 190	java/io/FileOutputStream:write	([BII)V
    //   390: aload_0
    //   391: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   394: astore 22
    //   396: aload 22
    //   398: aload 22
    //   400: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   403: iload 21
    //   405: i2l
    //   406: ladd
    //   407: putfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   410: iload 19
    //   412: iload 21
    //   414: iadd
    //   415: istore 19
    //   417: iload 17
    //   419: ifeq +9 -> 428
    //   422: lload_3
    //   423: iload 21
    //   425: i2l
    //   426: ladd
    //   427: lstore_3
    //   428: aload_0
    //   429: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   432: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   435: aload_0
    //   436: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   439: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   442: lcmp
    //   443: ifne +47 -> 490
    //   446: aload_0
    //   447: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   450: fconst_1
    //   451: putfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   454: goto -223 -> 231
    //   457: astore 9
    //   459: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   462: dup
    //   463: sipush -7056
    //   466: new 103	java/lang/StringBuilder
    //   469: dup
    //   470: ldc 196
    //   472: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   475: aload 9
    //   477: invokevirtual 197	java/io/IOException:getMessage	()Ljava/lang/String;
    //   480: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   483: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   486: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   489: athrow
    //   490: aload_0
    //   491: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   494: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   497: lconst_0
    //   498: lcmp
    //   499: ifle +38 -> 537
    //   502: aload_0
    //   503: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   506: aload_0
    //   507: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   510: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   513: l2f
    //   514: aload_0
    //   515: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   518: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   521: l2f
    //   522: fdiv
    //   523: putfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   526: aload_0
    //   527: getfield 199	bww:g	Lbwv;
    //   530: aload_0
    //   531: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   534: invokevirtual 204	bwv:b	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   537: aload_0
    //   538: getfield 50	bww:e	Z
    //   541: ifeq -310 -> 231
    //   544: iload 19
    //   546: aload_0
    //   547: getfield 48	bww:d	I
    //   550: if_icmple -330 -> 220
    //   553: invokestatic 148	java/lang/System:currentTimeMillis	()J
    //   556: lload 13
    //   558: lsub
    //   559: lstore 23
    //   561: lload 23
    //   563: lconst_0
    //   564: lcmp
    //   565: ifgt +6 -> 571
    //   568: lconst_1
    //   569: lstore 23
    //   571: aload_0
    //   572: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   575: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   578: lload 15
    //   580: lsub
    //   581: lload 23
    //   583: ldiv
    //   584: l2i
    //   585: istore 25
    //   587: aload_0
    //   588: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   591: getfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   594: ifne +67 -> 661
    //   597: aload_0
    //   598: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   601: iload 25
    //   603: putfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   606: iload 25
    //   608: bipush 33
    //   610: if_icmpge +105 -> 715
    //   613: aload 18
    //   615: arraylength
    //   616: getstatic 43	bww:b	[S
    //   619: iconst_0
    //   620: saload
    //   621: bipush 10
    //   623: ishl
    //   624: if_icmpeq +15 -> 639
    //   627: getstatic 43	bww:b	[S
    //   630: iconst_0
    //   631: saload
    //   632: bipush 10
    //   634: ishl
    //   635: newarray byte
    //   637: astore 18
    //   639: lload_3
    //   640: lconst_0
    //   641: lcmp
    //   642: ifle +190 -> 832
    //   645: lload_3
    //   646: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   649: ladd
    //   650: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   653: lconst_0
    //   654: lstore_3
    //   655: iconst_0
    //   656: istore 19
    //   658: goto -438 -> 220
    //   661: aload_0
    //   662: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   665: iload 25
    //   667: aload_0
    //   668: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   671: getfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   674: iadd
    //   675: iconst_2
    //   676: idiv
    //   677: putfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   680: goto -74 -> 606
    //   683: astore 10
    //   685: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   688: dup
    //   689: bipush 254
    //   691: new 103	java/lang/StringBuilder
    //   694: dup
    //   695: ldc 209
    //   697: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   700: aload 10
    //   702: invokevirtual 210	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   705: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   708: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   711: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   714: athrow
    //   715: iload 25
    //   717: bipush 65
    //   719: if_icmpge +32 -> 751
    //   722: aload 18
    //   724: arraylength
    //   725: getstatic 43	bww:b	[S
    //   728: iconst_1
    //   729: saload
    //   730: bipush 10
    //   732: ishl
    //   733: if_icmpeq -94 -> 639
    //   736: getstatic 43	bww:b	[S
    //   739: iconst_1
    //   740: saload
    //   741: bipush 10
    //   743: ishl
    //   744: newarray byte
    //   746: astore 18
    //   748: goto -109 -> 639
    //   751: aload 18
    //   753: arraylength
    //   754: getstatic 43	bww:b	[S
    //   757: iconst_2
    //   758: saload
    //   759: bipush 10
    //   761: ishl
    //   762: if_icmpeq -123 -> 639
    //   765: getstatic 43	bww:b	[S
    //   768: iconst_2
    //   769: saload
    //   770: bipush 10
    //   772: ishl
    //   773: newarray byte
    //   775: astore 18
    //   777: goto -138 -> 639
    //   780: astore 8
    //   782: aload 8
    //   784: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   787: goto -644 -> 143
    //   790: astore 26
    //   792: aload 26
    //   794: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   797: goto -561 -> 236
    //   800: astore 7
    //   802: aconst_null
    //   803: astore 6
    //   805: goto -672 -> 133
    //   808: astore 10
    //   810: aconst_null
    //   811: astore 6
    //   813: goto -128 -> 685
    //   816: astore 9
    //   818: aconst_null
    //   819: astore 6
    //   821: goto -362 -> 459
    //   824: astore 5
    //   826: aconst_null
    //   827: astore 6
    //   829: goto -483 -> 346
    //   832: iconst_0
    //   833: istore 19
    //   835: goto -615 -> 220
    //   838: aload 12
    //   840: astore 18
    //   842: iconst_0
    //   843: istore 19
    //   845: goto -625 -> 220
    //   848: astore 11
    //   850: aload 6
    //   852: astore_2
    //   853: goto -728 -> 125
    //
    // Exception table:
    //   from	to	target	type
    //   4	123	123	com/tencent/tmsecure/exception/NetWorkException
    //   160	191	123	com/tencent/tmsecure/exception/NetWorkException
    //   125	128	128	finally
    //   191	226	344	java/io/UnsupportedEncodingException
    //   257	341	344	java/io/UnsupportedEncodingException
    //   381	454	344	java/io/UnsupportedEncodingException
    //   490	680	344	java/io/UnsupportedEncodingException
    //   722	777	344	java/io/UnsupportedEncodingException
    //   191	226	376	finally
    //   257	341	376	finally
    //   346	376	376	finally
    //   381	454	376	finally
    //   459	490	376	finally
    //   490	680	376	finally
    //   685	715	376	finally
    //   722	777	376	finally
    //   191	226	457	java/io/IOException
    //   257	341	457	java/io/IOException
    //   381	454	457	java/io/IOException
    //   490	680	457	java/io/IOException
    //   722	777	457	java/io/IOException
    //   191	226	683	java/lang/Exception
    //   257	341	683	java/lang/Exception
    //   381	454	683	java/lang/Exception
    //   490	680	683	java/lang/Exception
    //   722	777	683	java/lang/Exception
    //   138	143	780	java/lang/Exception
    //   231	236	790	java/lang/Exception
    //   4	123	800	finally
    //   160	191	800	finally
    //   4	123	808	java/lang/Exception
    //   160	191	808	java/lang/Exception
    //   4	123	816	java/io/IOException
    //   160	191	816	java/io/IOException
    //   4	123	824	java/io/UnsupportedEncodingException
    //   160	191	824	java/io/UnsupportedEncodingException
    //   191	226	848	com/tencent/tmsecure/exception/NetWorkException
    //   257	341	848	com/tencent/tmsecure/exception/NetWorkException
    //   381	454	848	com/tencent/tmsecure/exception/NetWorkException
    //   490	680	848	com/tencent/tmsecure/exception/NetWorkException
    //   722	777	848	com/tencent/tmsecure/exception/NetWorkException
  }

  // ERROR //
  private void b(java.io.FileOutputStream paramFileOutputStream)
    throws com.tencent.tmsecure.exception.NetWorkException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: lconst_0
    //   3: lstore_3
    //   4: iconst_0
    //   5: istore 5
    //   7: aconst_null
    //   8: astore 6
    //   10: iconst_1
    //   11: istore 7
    //   13: getstatic 43	bww:b	[S
    //   16: iconst_1
    //   17: saload
    //   18: bipush 10
    //   20: ishl
    //   21: newarray byte
    //   23: astore 30
    //   25: iconst_1
    //   26: istore 31
    //   28: aload_0
    //   29: getfield 50	bww:e	Z
    //   32: istore 32
    //   34: aconst_null
    //   35: astore_2
    //   36: iload 32
    //   38: ifeq +19 -> 57
    //   41: aload_0
    //   42: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   45: getfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   48: fstore 34
    //   50: fload 34
    //   52: fconst_1
    //   53: fcmpl
    //   54: ifne +33 -> 87
    //   57: aload_0
    //   58: getfield 54	bww:k	B
    //   61: ifle +11 -> 72
    //   64: aload_1
    //   65: ifnull +7 -> 72
    //   68: aload_1
    //   69: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   72: lload_3
    //   73: lconst_0
    //   74: lcmp
    //   75: ifle +11 -> 86
    //   78: lload_3
    //   79: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   82: ladd
    //   83: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   86: return
    //   87: new 216	java/lang/StringBuffer
    //   90: dup
    //   91: invokespecial 217	java/lang/StringBuffer:<init>	()V
    //   94: astore 35
    //   96: aload_0
    //   97: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   100: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   103: lstore 36
    //   105: lload 36
    //   107: lconst_1
    //   108: aload_0
    //   109: getfield 48	bww:d	I
    //   112: i2l
    //   113: lmul
    //   114: iload 7
    //   116: i2l
    //   117: lmul
    //   118: ladd
    //   119: lconst_1
    //   120: lsub
    //   121: lstore 38
    //   123: lload 38
    //   125: aload_0
    //   126: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   129: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   132: lcmp
    //   133: istore 40
    //   135: aconst_null
    //   136: astore_2
    //   137: iload 40
    //   139: iflt +14 -> 153
    //   142: aload_0
    //   143: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   146: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   149: lconst_1
    //   150: lsub
    //   151: lstore 38
    //   153: lload 36
    //   155: lload 38
    //   157: lcmp
    //   158: istore 41
    //   160: aconst_null
    //   161: astore_2
    //   162: iload 41
    //   164: ifge -107 -> 57
    //   167: aload 35
    //   169: ldc 219
    //   171: invokevirtual 222	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   174: lload 36
    //   176: invokevirtual 225	java/lang/StringBuffer:append	(J)Ljava/lang/StringBuffer;
    //   179: bipush 45
    //   181: invokevirtual 228	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   184: lload 38
    //   186: invokevirtual 225	java/lang/StringBuffer:append	(J)Ljava/lang/StringBuffer;
    //   189: pop
    //   190: aload_0
    //   191: getfield 50	bww:e	Z
    //   194: istore 43
    //   196: aconst_null
    //   197: astore_2
    //   198: iload 43
    //   200: ifeq -143 -> 57
    //   203: iconst_0
    //   204: istore 5
    //   206: aload_0
    //   207: getfield 52	bww:f	Lbtg;
    //   210: astore 44
    //   212: aconst_null
    //   213: astore_2
    //   214: iconst_0
    //   215: istore 5
    //   217: aload 44
    //   219: ifnonnull +234 -> 453
    //   222: aload_0
    //   223: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   226: getfield 88	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isOnChangeRetry	Z
    //   229: istore 80
    //   231: aconst_null
    //   232: astore_2
    //   233: iconst_0
    //   234: istore 5
    //   236: iload 80
    //   238: ifeq +198 -> 436
    //   241: aload_0
    //   242: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   245: getfield 91	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mChangeUrl	Ljava/lang/String;
    //   248: astore 83
    //   250: aconst_null
    //   251: astore_2
    //   252: iconst_0
    //   253: istore 5
    //   255: aload 83
    //   257: ifnull +179 -> 436
    //   260: aload_0
    //   261: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   264: getfield 91	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mChangeUrl	Ljava/lang/String;
    //   267: astore 81
    //   269: aload_0
    //   270: aload 81
    //   272: invokestatic 96	btg:a	(Ljava/lang/String;)Lbtg;
    //   275: putfield 52	bww:f	Lbtg;
    //   278: aload_0
    //   279: getfield 52	bww:f	Lbtg;
    //   282: ldc 230
    //   284: aload 35
    //   286: invokevirtual 231	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   289: invokevirtual 234	btg:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   292: aload_0
    //   293: getfield 52	bww:f	Lbtg;
    //   296: invokevirtual 99	btg:a	()I
    //   299: pop
    //   300: aload_0
    //   301: getfield 50	bww:e	Z
    //   304: istore 46
    //   306: aconst_null
    //   307: astore_2
    //   308: iconst_0
    //   309: istore 5
    //   311: iload 46
    //   313: ifeq -256 -> 57
    //   316: aload_0
    //   317: getfield 52	bww:f	Lbtg;
    //   320: invokevirtual 101	btg:c	()I
    //   323: istore 47
    //   325: aconst_null
    //   326: astore_2
    //   327: iconst_0
    //   328: istore 5
    //   330: iload 47
    //   332: sipush 206
    //   335: if_icmpeq +203 -> 538
    //   338: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   341: dup
    //   342: sipush -3000
    //   345: aload_0
    //   346: getfield 52	bww:f	Lbtg;
    //   349: invokevirtual 101	btg:c	()I
    //   352: iadd
    //   353: new 103	java/lang/StringBuilder
    //   356: dup
    //   357: ldc 236
    //   359: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   362: aload_0
    //   363: getfield 52	bww:f	Lbtg;
    //   366: invokevirtual 101	btg:c	()I
    //   369: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   372: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   375: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   378: athrow
    //   379: astore 29
    //   381: aload 29
    //   383: athrow
    //   384: astore 9
    //   386: aload_2
    //   387: ifnull +7 -> 394
    //   390: aload_2
    //   391: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   394: aload_0
    //   395: getfield 54	bww:k	B
    //   398: ifle +11 -> 409
    //   401: aload_1
    //   402: ifnull +7 -> 409
    //   405: aload_1
    //   406: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   409: aload 6
    //   411: ifnull +8 -> 419
    //   414: aload 6
    //   416: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   419: lload_3
    //   420: lconst_0
    //   421: lcmp
    //   422: ifle +11 -> 433
    //   425: lload_3
    //   426: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   429: ladd
    //   430: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   433: aload 9
    //   435: athrow
    //   436: aload_0
    //   437: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   440: getfield 137	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mUrl	Ljava/lang/String;
    //   443: astore 81
    //   445: aconst_null
    //   446: astore_2
    //   447: iconst_0
    //   448: istore 5
    //   450: goto -181 -> 269
    //   453: aconst_null
    //   454: astore_2
    //   455: iconst_0
    //   456: istore 5
    //   458: iload 31
    //   460: ifne -160 -> 300
    //   463: aload_0
    //   464: getfield 52	bww:f	Lbtg;
    //   467: invokevirtual 241	btg:d	()V
    //   470: aload_0
    //   471: aload_0
    //   472: getfield 52	bww:f	Lbtg;
    //   475: invokestatic 244	btg:a	(Lbtg;)Lbtg;
    //   478: putfield 52	bww:f	Lbtg;
    //   481: aload_0
    //   482: getfield 52	bww:f	Lbtg;
    //   485: ldc 230
    //   487: aload 35
    //   489: invokevirtual 231	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   492: invokevirtual 234	btg:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   495: aload_0
    //   496: getfield 52	bww:f	Lbtg;
    //   499: invokevirtual 99	btg:a	()I
    //   502: pop
    //   503: goto -203 -> 300
    //   506: astore 28
    //   508: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   511: dup
    //   512: bipush 197
    //   514: new 103	java/lang/StringBuilder
    //   517: dup
    //   518: ldc 246
    //   520: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   523: aload 28
    //   525: invokevirtual 181	java/io/UnsupportedEncodingException:getMessage	()Ljava/lang/String;
    //   528: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   534: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   537: athrow
    //   538: aload_0
    //   539: getfield 52	bww:f	Lbtg;
    //   542: invokevirtual 248	btg:e	()J
    //   545: lstore 48
    //   547: lload 48
    //   549: lconst_0
    //   550: lcmp
    //   551: istore 50
    //   553: aconst_null
    //   554: astore_2
    //   555: iconst_0
    //   556: istore 5
    //   558: iload 50
    //   560: ifle +226 -> 786
    //   563: lload 48
    //   565: aload_0
    //   566: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   569: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   572: lcmp
    //   573: istore 79
    //   575: aconst_null
    //   576: astore_2
    //   577: iconst_0
    //   578: istore 5
    //   580: iload 79
    //   582: ifeq +204 -> 786
    //   585: aload_0
    //   586: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   589: iconst_0
    //   590: putfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   593: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   596: dup
    //   597: bipush 200
    //   599: ldc 253
    //   601: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   604: athrow
    //   605: astore 13
    //   607: iload 5
    //   609: istore 14
    //   611: aconst_null
    //   612: astore 15
    //   614: lload_3
    //   615: lstore 16
    //   617: iload 14
    //   619: istore 18
    //   621: aload_0
    //   622: getfield 50	bww:e	Z
    //   625: ifeq +900 -> 1525
    //   628: aload_0
    //   629: getfield 54	bww:k	B
    //   632: istore 19
    //   634: aload_0
    //   635: iload 19
    //   637: iconst_1
    //   638: iadd
    //   639: i2b
    //   640: putfield 54	bww:k	B
    //   643: iload 19
    //   645: bipush 10
    //   647: if_icmpge +878 -> 1525
    //   650: aload_1
    //   651: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   654: aload_1
    //   655: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   658: aload_0
    //   659: getfield 52	bww:f	Lbtg;
    //   662: invokevirtual 241	btg:d	()V
    //   665: aload_0
    //   666: aconst_null
    //   667: putfield 52	bww:f	Lbtg;
    //   670: aload_0
    //   671: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   674: new 258	java/io/File
    //   677: dup
    //   678: aload_0
    //   679: getfield 58	bww:h	Ljava/lang/String;
    //   682: invokespecial 259	java/io/File:<init>	(Ljava/lang/String;)V
    //   685: invokevirtual 262	java/io/File:length	()J
    //   688: putfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   691: new 186	java/io/FileOutputStream
    //   694: dup
    //   695: aload_0
    //   696: getfield 58	bww:h	Ljava/lang/String;
    //   699: iconst_1
    //   700: invokespecial 265	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   703: astore 22
    //   705: aload 22
    //   707: invokevirtual 269	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   710: astore 23
    //   712: aload 23
    //   714: astore 21
    //   716: aload 21
    //   718: aload_0
    //   719: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   722: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   725: invokevirtual 273	java/nio/channels/FileChannel:position	(J)Ljava/nio/channels/FileChannel;
    //   728: pop
    //   729: aload_0
    //   730: aload 22
    //   732: invokespecial 275	bww:b	(Ljava/io/FileOutputStream;)V
    //   735: aload 15
    //   737: ifnull +8 -> 745
    //   740: aload 15
    //   742: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   745: aload_0
    //   746: getfield 54	bww:k	B
    //   749: ifle +8 -> 757
    //   752: aload 22
    //   754: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   757: aload 21
    //   759: ifnull +8 -> 767
    //   762: aload 21
    //   764: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   767: lload 16
    //   769: lconst_0
    //   770: lcmp
    //   771: ifle -685 -> 86
    //   774: lload 16
    //   776: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   779: ladd
    //   780: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   783: goto -697 -> 86
    //   786: iload 31
    //   788: ifeq +1021 -> 1809
    //   791: iconst_0
    //   792: istore 51
    //   794: invokestatic 158	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   797: astore 52
    //   799: getstatic 164	QQPIM/ConnectType:CT_WIFI	LQQPIM/ConnectType;
    //   802: astore 53
    //   804: aconst_null
    //   805: astore_2
    //   806: iconst_0
    //   807: istore 5
    //   809: aload 52
    //   811: aload 53
    //   813: if_acmpeq +218 -> 1031
    //   816: iconst_1
    //   817: istore 54
    //   819: aload_0
    //   820: getfield 50	bww:e	Z
    //   823: istore 55
    //   825: iload 55
    //   827: ifeq -770 -> 57
    //   830: iconst_1
    //   831: istore 56
    //   833: new 121	java/io/BufferedInputStream
    //   836: dup
    //   837: aload_0
    //   838: getfield 52	bww:f	Lbtg;
    //   841: invokevirtual 140	btg:b	()Ljava/io/InputStream;
    //   844: aload 30
    //   846: arraylength
    //   847: invokespecial 143	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;I)V
    //   850: astore 15
    //   852: invokestatic 148	java/lang/System:currentTimeMillis	()J
    //   855: lstore 57
    //   857: iload 56
    //   859: istore 59
    //   861: aload_0
    //   862: getfield 50	bww:e	Z
    //   865: istore 61
    //   867: iload 61
    //   869: ifne +168 -> 1037
    //   872: iload 59
    //   874: istore 56
    //   876: aload 15
    //   878: invokevirtual 124	java/io/BufferedInputStream:close	()V
    //   881: aconst_null
    //   882: astore_2
    //   883: invokestatic 148	java/lang/System:currentTimeMillis	()J
    //   886: lload 57
    //   888: lsub
    //   889: lstore 67
    //   891: lload 67
    //   893: lconst_0
    //   894: lcmp
    //   895: istore 69
    //   897: aconst_null
    //   898: astore_2
    //   899: iload 69
    //   901: ifgt +6 -> 907
    //   904: lconst_1
    //   905: lstore 67
    //   907: aload_0
    //   908: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   911: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   914: lload 36
    //   916: lsub
    //   917: lload 67
    //   919: ldiv
    //   920: l2i
    //   921: istore 70
    //   923: aload_0
    //   924: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   927: getfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   930: istore 71
    //   932: aconst_null
    //   933: astore_2
    //   934: iload 71
    //   936: ifne +394 -> 1330
    //   939: aload_0
    //   940: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   943: iload 70
    //   945: putfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   948: aconst_null
    //   949: astore_2
    //   950: iload 70
    //   952: bipush 33
    //   954: if_icmpge +398 -> 1352
    //   957: iconst_1
    //   958: istore 72
    //   960: aload 30
    //   962: arraylength
    //   963: istore 77
    //   965: getstatic 43	bww:b	[S
    //   968: iconst_0
    //   969: saload
    //   970: bipush 10
    //   972: ishl
    //   973: istore 78
    //   975: aconst_null
    //   976: astore_2
    //   977: iload 77
    //   979: iload 78
    //   981: if_icmpeq +821 -> 1802
    //   984: getstatic 43	bww:b	[S
    //   987: iconst_0
    //   988: saload
    //   989: bipush 10
    //   991: ishl
    //   992: newarray byte
    //   994: astore 30
    //   996: iload 72
    //   998: istore 7
    //   1000: lload_3
    //   1001: lconst_0
    //   1002: lcmp
    //   1003: ifle +788 -> 1791
    //   1006: bipush 6
    //   1008: istore 5
    //   1010: lload_3
    //   1011: invokestatic 130	com/tencent/tmsecure/module/networkload/NetworkloadProperties:getSelfMobileDownloadBytes	()J
    //   1014: ladd
    //   1015: invokestatic 134	com/tencent/tmsecure/module/networkload/NetworkloadProperties:updateSelfMobileDownloadBytes	(J)V
    //   1018: lconst_0
    //   1019: lstore_3
    //   1020: bipush 7
    //   1022: istore 5
    //   1024: iload 51
    //   1026: istore 31
    //   1028: goto -1000 -> 28
    //   1031: iconst_0
    //   1032: istore 54
    //   1034: goto -215 -> 819
    //   1037: iconst_2
    //   1038: istore 59
    //   1040: aload_0
    //   1041: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1044: getfield 167	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mNetworkType	LQQPIM/ConnectType;
    //   1047: invokestatic 158	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   1050: if_acmpeq +16 -> 1066
    //   1053: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   1056: dup
    //   1057: sipush -7052
    //   1060: ldc 169
    //   1062: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1065: athrow
    //   1066: aload 15
    //   1068: aload 30
    //   1070: invokevirtual 173	java/io/BufferedInputStream:read	([B)I
    //   1073: istore 62
    //   1075: iload 62
    //   1077: ifgt +62 -> 1139
    //   1080: aload_0
    //   1081: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1084: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1087: aload_0
    //   1088: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1091: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1094: lcmp
    //   1095: ifle -223 -> 872
    //   1098: aload_0
    //   1099: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1102: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1105: lconst_0
    //   1106: lcmp
    //   1107: ifle -235 -> 872
    //   1110: aload_0
    //   1111: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1114: aload_0
    //   1115: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1118: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1121: putfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1124: aload_0
    //   1125: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1128: fconst_1
    //   1129: putfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   1132: iload 59
    //   1134: istore 56
    //   1136: goto -260 -> 876
    //   1139: aload_0
    //   1140: getfield 50	bww:e	Z
    //   1143: istore 63
    //   1145: iload 63
    //   1147: ifeq -275 -> 872
    //   1150: iconst_3
    //   1151: istore 59
    //   1153: aload_1
    //   1154: aload 30
    //   1156: iconst_0
    //   1157: iload 62
    //   1159: invokevirtual 190	java/io/FileOutputStream:write	([BII)V
    //   1162: aload_1
    //   1163: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   1166: aload_0
    //   1167: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1170: astore 65
    //   1172: aload 65
    //   1174: aload 65
    //   1176: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1179: iload 62
    //   1181: i2l
    //   1182: ladd
    //   1183: putfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1186: iload 54
    //   1188: ifeq +9 -> 1197
    //   1191: lload_3
    //   1192: iload 62
    //   1194: i2l
    //   1195: ladd
    //   1196: lstore_3
    //   1197: aload_0
    //   1198: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1201: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1204: aload_0
    //   1205: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1208: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1211: lcmp
    //   1212: ifne +52 -> 1264
    //   1215: aload_0
    //   1216: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1219: fconst_1
    //   1220: putfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   1223: iload 59
    //   1225: istore 56
    //   1227: goto -351 -> 876
    //   1230: astore 64
    //   1232: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   1235: dup
    //   1236: sipush -7056
    //   1239: new 103	java/lang/StringBuilder
    //   1242: dup
    //   1243: ldc_w 277
    //   1246: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1249: aload 64
    //   1251: invokevirtual 197	java/io/IOException:getMessage	()Ljava/lang/String;
    //   1254: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1257: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1260: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1263: athrow
    //   1264: aload_0
    //   1265: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1268: aload_0
    //   1269: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1272: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1275: l2f
    //   1276: aload_0
    //   1277: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1280: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1283: l2f
    //   1284: fdiv
    //   1285: putfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   1288: iconst_4
    //   1289: istore 59
    //   1291: aload_0
    //   1292: getfield 199	bww:g	Lbwv;
    //   1295: aload_0
    //   1296: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1299: invokevirtual 204	bwv:b	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   1302: iconst_5
    //   1303: istore 59
    //   1305: goto -444 -> 861
    //   1308: astore 66
    //   1310: aload 66
    //   1312: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   1315: goto -434 -> 881
    //   1318: astore 13
    //   1320: lload_3
    //   1321: lstore 16
    //   1323: iload 56
    //   1325: istore 18
    //   1327: goto -706 -> 621
    //   1330: aload_0
    //   1331: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1334: iload 70
    //   1336: aload_0
    //   1337: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1340: getfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   1343: iadd
    //   1344: iconst_2
    //   1345: idiv
    //   1346: putfield 207	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSpeed	I
    //   1349: goto -401 -> 948
    //   1352: aconst_null
    //   1353: astore_2
    //   1354: iload 70
    //   1356: bipush 65
    //   1358: if_icmpge +51 -> 1409
    //   1361: iconst_2
    //   1362: istore 72
    //   1364: aload 30
    //   1366: arraylength
    //   1367: istore 75
    //   1369: getstatic 43	bww:b	[S
    //   1372: iconst_1
    //   1373: saload
    //   1374: bipush 10
    //   1376: ishl
    //   1377: istore 76
    //   1379: aconst_null
    //   1380: astore_2
    //   1381: iload 75
    //   1383: iload 76
    //   1385: if_icmpeq +417 -> 1802
    //   1388: getstatic 43	bww:b	[S
    //   1391: iconst_1
    //   1392: saload
    //   1393: bipush 10
    //   1395: ishl
    //   1396: newarray byte
    //   1398: astore 30
    //   1400: iload 72
    //   1402: istore 7
    //   1404: aconst_null
    //   1405: astore_2
    //   1406: goto -406 -> 1000
    //   1409: iconst_3
    //   1410: istore 72
    //   1412: aload 30
    //   1414: arraylength
    //   1415: istore 73
    //   1417: getstatic 43	bww:b	[S
    //   1420: iconst_2
    //   1421: saload
    //   1422: bipush 10
    //   1424: ishl
    //   1425: istore 74
    //   1427: aconst_null
    //   1428: astore_2
    //   1429: iload 73
    //   1431: iload 74
    //   1433: if_icmpeq +369 -> 1802
    //   1436: getstatic 43	bww:b	[S
    //   1439: iconst_2
    //   1440: saload
    //   1441: bipush 10
    //   1443: ishl
    //   1444: newarray byte
    //   1446: astore 30
    //   1448: iload 72
    //   1450: istore 7
    //   1452: goto -452 -> 1000
    //   1455: astore 20
    //   1457: aconst_null
    //   1458: astore 21
    //   1460: aload 20
    //   1462: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1465: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   1468: dup
    //   1469: sipush -7056
    //   1472: new 103	java/lang/StringBuilder
    //   1475: dup
    //   1476: ldc_w 280
    //   1479: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1482: aload_0
    //   1483: getfield 54	bww:k	B
    //   1486: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1489: ldc_w 282
    //   1492: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1495: aload 20
    //   1497: invokevirtual 197	java/io/IOException:getMessage	()Ljava/lang/String;
    //   1500: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1503: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1506: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1509: athrow
    //   1510: astore 9
    //   1512: aload 21
    //   1514: astore 6
    //   1516: lload 16
    //   1518: lstore_3
    //   1519: aload 15
    //   1521: astore_2
    //   1522: goto -1136 -> 386
    //   1525: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   1528: dup
    //   1529: sipush -7056
    //   1532: new 103	java/lang/StringBuilder
    //   1535: dup
    //   1536: ldc_w 284
    //   1539: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1542: aload 13
    //   1544: invokevirtual 197	java/io/IOException:getMessage	()Ljava/lang/String;
    //   1547: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1550: ldc_w 286
    //   1553: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1556: iload 18
    //   1558: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1561: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1564: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1567: athrow
    //   1568: astore 9
    //   1570: lload 16
    //   1572: lstore_3
    //   1573: aload 15
    //   1575: astore_2
    //   1576: aconst_null
    //   1577: astore 6
    //   1579: goto -1193 -> 386
    //   1582: astore 27
    //   1584: aload 27
    //   1586: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   1589: goto -844 -> 745
    //   1592: astore 26
    //   1594: aload 26
    //   1596: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1599: goto -842 -> 757
    //   1602: astore 25
    //   1604: aload 25
    //   1606: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1609: goto -842 -> 767
    //   1612: astore 8
    //   1614: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   1617: dup
    //   1618: bipush 254
    //   1620: new 103	java/lang/StringBuilder
    //   1623: dup
    //   1624: ldc_w 288
    //   1627: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1630: aload 8
    //   1632: invokevirtual 294	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1635: invokevirtual 299	java/lang/Class:getName	()Ljava/lang/String;
    //   1638: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1641: ldc_w 301
    //   1644: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1647: aload 8
    //   1649: invokevirtual 210	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1652: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1655: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1658: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1661: athrow
    //   1662: astore 12
    //   1664: aload 12
    //   1666: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   1669: goto -1275 -> 394
    //   1672: astore 11
    //   1674: aload 11
    //   1676: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1679: goto -1270 -> 409
    //   1682: astore 10
    //   1684: aload 10
    //   1686: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1689: goto -1270 -> 419
    //   1692: astore 33
    //   1694: aload 33
    //   1696: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1699: goto -1627 -> 72
    //   1702: astore 9
    //   1704: aload 15
    //   1706: astore_2
    //   1707: aconst_null
    //   1708: astore 6
    //   1710: goto -1324 -> 386
    //   1713: astore 9
    //   1715: aload 22
    //   1717: astore_1
    //   1718: lload 16
    //   1720: lstore_3
    //   1721: aload 15
    //   1723: astore_2
    //   1724: aconst_null
    //   1725: astore 6
    //   1727: goto -1341 -> 386
    //   1730: astore 9
    //   1732: aload 21
    //   1734: astore 6
    //   1736: aload 22
    //   1738: astore_1
    //   1739: lload 16
    //   1741: lstore_3
    //   1742: aload 15
    //   1744: astore_2
    //   1745: goto -1359 -> 386
    //   1748: astore 8
    //   1750: aload 15
    //   1752: astore_2
    //   1753: goto -139 -> 1614
    //   1756: astore 20
    //   1758: aload 22
    //   1760: astore_1
    //   1761: aconst_null
    //   1762: astore 21
    //   1764: goto -304 -> 1460
    //   1767: astore 20
    //   1769: aload 22
    //   1771: astore_1
    //   1772: goto -312 -> 1460
    //   1775: astore 13
    //   1777: iload 59
    //   1779: istore 60
    //   1781: lload_3
    //   1782: lstore 16
    //   1784: iload 60
    //   1786: istore 18
    //   1788: goto -1167 -> 621
    //   1791: iload 56
    //   1793: istore 5
    //   1795: iload 51
    //   1797: istore 31
    //   1799: goto -1771 -> 28
    //   1802: iload 72
    //   1804: istore 7
    //   1806: goto -806 -> 1000
    //   1809: iload 31
    //   1811: istore 51
    //   1813: goto -1019 -> 794
    //   1816: astore 29
    //   1818: aload 15
    //   1820: astore_2
    //   1821: goto -1440 -> 381
    //   1824: astore 28
    //   1826: aload 15
    //   1828: astore_2
    //   1829: goto -1321 -> 508
    //   1832: astore 13
    //   1834: lload_3
    //   1835: lstore 16
    //   1837: iload 56
    //   1839: istore 18
    //   1841: aconst_null
    //   1842: astore 15
    //   1844: goto -1223 -> 621
    //
    // Exception table:
    //   from	to	target	type
    //   13	50	379	com/tencent/tmsecure/exception/NetWorkException
    //   87	379	379	com/tencent/tmsecure/exception/NetWorkException
    //   436	503	379	com/tencent/tmsecure/exception/NetWorkException
    //   538	605	379	com/tencent/tmsecure/exception/NetWorkException
    //   794	825	379	com/tencent/tmsecure/exception/NetWorkException
    //   833	852	379	com/tencent/tmsecure/exception/NetWorkException
    //   883	996	379	com/tencent/tmsecure/exception/NetWorkException
    //   1010	1018	379	com/tencent/tmsecure/exception/NetWorkException
    //   1330	1448	379	com/tencent/tmsecure/exception/NetWorkException
    //   13	50	384	finally
    //   87	379	384	finally
    //   381	384	384	finally
    //   436	503	384	finally
    //   508	538	384	finally
    //   538	605	384	finally
    //   794	825	384	finally
    //   833	852	384	finally
    //   883	996	384	finally
    //   1010	1018	384	finally
    //   1330	1448	384	finally
    //   1614	1662	384	finally
    //   13	50	506	java/io/UnsupportedEncodingException
    //   87	379	506	java/io/UnsupportedEncodingException
    //   436	503	506	java/io/UnsupportedEncodingException
    //   538	605	506	java/io/UnsupportedEncodingException
    //   794	825	506	java/io/UnsupportedEncodingException
    //   833	852	506	java/io/UnsupportedEncodingException
    //   883	996	506	java/io/UnsupportedEncodingException
    //   1010	1018	506	java/io/UnsupportedEncodingException
    //   1330	1448	506	java/io/UnsupportedEncodingException
    //   13	50	605	java/io/IOException
    //   87	379	605	java/io/IOException
    //   436	503	605	java/io/IOException
    //   538	605	605	java/io/IOException
    //   794	825	605	java/io/IOException
    //   1010	1018	605	java/io/IOException
    //   1153	1186	1230	java/io/IOException
    //   876	881	1308	java/lang/Exception
    //   852	857	1318	java/io/IOException
    //   876	881	1318	java/io/IOException
    //   1310	1315	1318	java/io/IOException
    //   650	705	1455	java/io/IOException
    //   1460	1510	1510	finally
    //   621	643	1568	finally
    //   650	705	1568	finally
    //   1525	1568	1568	finally
    //   740	745	1582	java/lang/Exception
    //   752	757	1592	java/io/IOException
    //   762	767	1602	java/io/IOException
    //   13	50	1612	java/lang/Exception
    //   87	379	1612	java/lang/Exception
    //   436	503	1612	java/lang/Exception
    //   538	605	1612	java/lang/Exception
    //   794	825	1612	java/lang/Exception
    //   833	852	1612	java/lang/Exception
    //   883	996	1612	java/lang/Exception
    //   1010	1018	1612	java/lang/Exception
    //   1330	1448	1612	java/lang/Exception
    //   390	394	1662	java/lang/Exception
    //   405	409	1672	java/io/IOException
    //   414	419	1682	java/io/IOException
    //   68	72	1692	java/io/IOException
    //   852	857	1702	finally
    //   861	867	1702	finally
    //   876	881	1702	finally
    //   1040	1145	1702	finally
    //   1153	1186	1702	finally
    //   1197	1302	1702	finally
    //   1310	1315	1702	finally
    //   705	712	1713	finally
    //   716	735	1730	finally
    //   852	857	1748	java/lang/Exception
    //   861	867	1748	java/lang/Exception
    //   1040	1145	1748	java/lang/Exception
    //   1153	1186	1748	java/lang/Exception
    //   1197	1302	1748	java/lang/Exception
    //   1310	1315	1748	java/lang/Exception
    //   705	712	1756	java/io/IOException
    //   716	735	1767	java/io/IOException
    //   861	867	1775	java/io/IOException
    //   1040	1145	1775	java/io/IOException
    //   1197	1302	1775	java/io/IOException
    //   852	857	1816	com/tencent/tmsecure/exception/NetWorkException
    //   861	867	1816	com/tencent/tmsecure/exception/NetWorkException
    //   876	881	1816	com/tencent/tmsecure/exception/NetWorkException
    //   1040	1145	1816	com/tencent/tmsecure/exception/NetWorkException
    //   1153	1186	1816	com/tencent/tmsecure/exception/NetWorkException
    //   1197	1302	1816	com/tencent/tmsecure/exception/NetWorkException
    //   1310	1315	1816	com/tencent/tmsecure/exception/NetWorkException
    //   852	857	1824	java/io/UnsupportedEncodingException
    //   861	867	1824	java/io/UnsupportedEncodingException
    //   876	881	1824	java/io/UnsupportedEncodingException
    //   1040	1145	1824	java/io/UnsupportedEncodingException
    //   1153	1186	1824	java/io/UnsupportedEncodingException
    //   1197	1302	1824	java/io/UnsupportedEncodingException
    //   1310	1315	1824	java/io/UnsupportedEncodingException
    //   833	852	1832	java/io/IOException
    //   883	996	1832	java/io/IOException
    //   1330	1448	1832	java/io/IOException
  }

  final void a()
  {
    this.e = false;
    if (this.f != null);
    try
    {
      this.f.d();
      this.f = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  final void a(bwv<T> parambwv)
  {
    this.g = parambwv;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 76	bww:i	[B
    //   6: astore_2
    //   7: aload_2
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   13: invokestatic 158	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   16: putfield 167	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mNetworkType	LQQPIM/ConnectType;
    //   19: aload_0
    //   20: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   23: invokestatic 308	com/tencent/tmsecure/utils/NetworkUtil:getNetworkName	()Ljava/lang/String;
    //   26: putfield 311	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mNetworkName	Ljava/lang/String;
    //   29: aload_0
    //   30: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   33: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   36: aload_0
    //   37: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   40: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   43: lcmp
    //   44: ifne +343 -> 387
    //   47: aload_0
    //   48: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   51: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   54: lconst_0
    //   55: lcmp
    //   56: ifle +331 -> 387
    //   59: aload_0
    //   60: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   63: iconst_3
    //   64: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   67: aload_0
    //   68: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   71: iconst_0
    //   72: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   75: aload_0
    //   76: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   79: ldc_w 319
    //   82: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   85: aload_0
    //   86: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   89: iconst_m1
    //   90: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   93: aload_0
    //   94: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   97: fconst_1
    //   98: putfield 194	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mProgress	F
    //   101: aload_0
    //   102: getfield 199	bww:g	Lbwv;
    //   105: aload_0
    //   106: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   109: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   112: aload_0
    //   113: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   116: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   119: aload_0
    //   120: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   123: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   126: lcmp
    //   127: ifne +15 -> 142
    //   130: aload_0
    //   131: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   134: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   137: lconst_0
    //   138: lcmp
    //   139: ifgt +55 -> 194
    //   142: aload_0
    //   143: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   146: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   149: iconst_2
    //   150: if_icmpeq +194 -> 344
    //   153: aload_0
    //   154: getfield 50	bww:e	Z
    //   157: ifeq +187 -> 344
    //   160: aload_0
    //   161: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   164: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   167: ifne +177 -> 344
    //   170: aload_0
    //   171: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   174: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   177: lconst_0
    //   178: lcmp
    //   179: ifgt +165 -> 344
    //   182: aload_0
    //   183: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   186: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   189: lconst_0
    //   190: lcmp
    //   191: ifle +153 -> 344
    //   194: aload_0
    //   195: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   198: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   201: iconst_2
    //   202: if_icmpeq +21 -> 223
    //   205: aload_0
    //   206: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   209: iconst_0
    //   210: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   213: aload_0
    //   214: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   217: ldc_w 319
    //   220: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   223: aload_0
    //   224: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   227: iconst_m1
    //   228: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   231: aload_0
    //   232: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   235: iconst_3
    //   236: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   239: aload_0
    //   240: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   243: aconst_null
    //   244: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   247: aload_0
    //   248: getfield 52	bww:f	Lbtg;
    //   251: ifnull +123 -> 374
    //   254: aload_0
    //   255: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   258: aload_0
    //   259: getfield 52	bww:f	Lbtg;
    //   262: invokevirtual 332	btg:h	()Ljava/lang/String;
    //   265: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   268: ldc_w 337
    //   271: aload_0
    //   272: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   275: getfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   278: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   281: ifeq +28 -> 309
    //   284: aload_0
    //   285: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   288: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   291: iconst_2
    //   292: if_icmpne +17 -> 309
    //   295: aload_0
    //   296: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   299: aload_0
    //   300: getfield 52	bww:f	Lbtg;
    //   303: invokevirtual 345	btg:g	()Ljava/lang/String;
    //   306: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   309: aload_0
    //   310: getfield 199	bww:g	Lbwv;
    //   313: aload_0
    //   314: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   317: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   320: aload_0
    //   321: getfield 52	bww:f	Lbtg;
    //   324: ifnull +15 -> 339
    //   327: aload_0
    //   328: getfield 52	bww:f	Lbtg;
    //   331: invokevirtual 241	btg:d	()V
    //   334: aload_0
    //   335: aconst_null
    //   336: putfield 52	bww:f	Lbtg;
    //   339: aload_2
    //   340: monitorexit
    //   341: goto +2126 -> 2467
    //   344: aload_0
    //   345: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   348: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   351: iconst_2
    //   352: if_icmpne -113 -> 239
    //   355: aload_0
    //   356: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   359: iconst_5
    //   360: invokestatic 351	com/tencent/tmsecure/utils/WifiUtil:calculateSignalLevel	(I)I
    //   363: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   366: goto -127 -> 239
    //   369: astore_3
    //   370: aload_2
    //   371: monitorexit
    //   372: aload_3
    //   373: athrow
    //   374: aload_0
    //   375: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   378: ldc_w 319
    //   381: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   384: goto -75 -> 309
    //   387: aload_0
    //   388: getfield 60	bww:j	Z
    //   391: istore 17
    //   393: iload 17
    //   395: ifne +162 -> 557
    //   398: aload_0
    //   399: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   402: getfield 88	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isOnChangeRetry	Z
    //   405: ifeq +455 -> 860
    //   408: aload_0
    //   409: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   412: getfield 91	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mChangeUrl	Ljava/lang/String;
    //   415: ifnull +445 -> 860
    //   418: aload_0
    //   419: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   422: getfield 91	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mChangeUrl	Ljava/lang/String;
    //   425: astore 23
    //   427: aload_0
    //   428: aload 23
    //   430: invokestatic 96	btg:a	(Ljava/lang/String;)Lbtg;
    //   433: putfield 52	bww:f	Lbtg;
    //   436: new 103	java/lang/StringBuilder
    //   439: dup
    //   440: ldc_w 353
    //   443: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   446: bipush 45
    //   448: invokevirtual 356	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   451: iconst_m1
    //   452: aload_0
    //   453: getfield 48	bww:d	I
    //   456: iadd
    //   457: invokevirtual 112	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   460: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   463: astore 24
    //   465: aload_0
    //   466: getfield 52	bww:f	Lbtg;
    //   469: ldc 230
    //   471: aload 24
    //   473: invokevirtual 234	btg:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   476: aload_0
    //   477: getfield 52	bww:f	Lbtg;
    //   480: invokevirtual 99	btg:a	()I
    //   483: sipush 206
    //   486: if_icmpeq +32 -> 518
    //   489: aload_0
    //   490: getfield 52	bww:f	Lbtg;
    //   493: invokevirtual 241	btg:d	()V
    //   496: aload_0
    //   497: aload_0
    //   498: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   501: getfield 137	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mUrl	Ljava/lang/String;
    //   504: invokestatic 96	btg:a	(Ljava/lang/String;)Lbtg;
    //   507: putfield 52	bww:f	Lbtg;
    //   510: aload_0
    //   511: getfield 52	bww:f	Lbtg;
    //   514: invokevirtual 99	btg:a	()I
    //   517: pop
    //   518: aload_0
    //   519: getfield 52	bww:f	Lbtg;
    //   522: invokevirtual 101	btg:c	()I
    //   525: istore 25
    //   527: iload 25
    //   529: sipush 206
    //   532: if_icmpne +340 -> 872
    //   535: aload_0
    //   536: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   539: iconst_1
    //   540: putfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   543: aload_0
    //   544: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   547: aload_0
    //   548: getfield 52	bww:f	Lbtg;
    //   551: invokevirtual 248	btg:e	()J
    //   554: putfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   557: new 186	java/io/FileOutputStream
    //   560: dup
    //   561: aload_0
    //   562: getfield 58	bww:h	Ljava/lang/String;
    //   565: iconst_1
    //   566: invokespecial 265	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   569: astore 5
    //   571: aload 5
    //   573: invokevirtual 269	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   576: astore_1
    //   577: aload_1
    //   578: aload_0
    //   579: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   582: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   585: invokevirtual 273	java/nio/channels/FileChannel:position	(J)Ljava/nio/channels/FileChannel;
    //   588: pop
    //   589: aload_0
    //   590: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   593: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   596: ifne +966 -> 1562
    //   599: aload_0
    //   600: aload 5
    //   602: invokespecial 358	bww:a	(Ljava/io/FileOutputStream;)V
    //   605: aload 5
    //   607: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   610: aload_0
    //   611: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   614: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   617: aload_0
    //   618: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   621: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   624: lcmp
    //   625: ifne +15 -> 640
    //   628: aload_0
    //   629: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   632: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   635: lconst_0
    //   636: lcmp
    //   637: ifgt +55 -> 692
    //   640: aload_0
    //   641: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   644: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   647: iconst_2
    //   648: if_icmpeq +1746 -> 2394
    //   651: aload_0
    //   652: getfield 50	bww:e	Z
    //   655: ifeq +1739 -> 2394
    //   658: aload_0
    //   659: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   662: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   665: ifne +1729 -> 2394
    //   668: aload_0
    //   669: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   672: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   675: lconst_0
    //   676: lcmp
    //   677: ifgt +1717 -> 2394
    //   680: aload_0
    //   681: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   684: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   687: lconst_0
    //   688: lcmp
    //   689: ifle +1705 -> 2394
    //   692: aload_0
    //   693: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   696: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   699: iconst_2
    //   700: if_icmpeq +21 -> 721
    //   703: aload_0
    //   704: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   707: iconst_0
    //   708: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   711: aload_0
    //   712: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   715: ldc_w 319
    //   718: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   721: aload_0
    //   722: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   725: iconst_m1
    //   726: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   729: aload_0
    //   730: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   733: iconst_3
    //   734: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   737: aload_0
    //   738: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   741: aconst_null
    //   742: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   745: aload_0
    //   746: getfield 52	bww:f	Lbtg;
    //   749: ifnull +1670 -> 2419
    //   752: aload_0
    //   753: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   756: aload_0
    //   757: getfield 52	bww:f	Lbtg;
    //   760: invokevirtual 332	btg:h	()Ljava/lang/String;
    //   763: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   766: ldc_w 337
    //   769: aload_0
    //   770: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   773: getfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   776: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   779: ifeq +28 -> 807
    //   782: aload_0
    //   783: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   786: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   789: iconst_2
    //   790: if_icmpne +17 -> 807
    //   793: aload_0
    //   794: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   797: aload_0
    //   798: getfield 52	bww:f	Lbtg;
    //   801: invokevirtual 345	btg:g	()Ljava/lang/String;
    //   804: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   807: aload_0
    //   808: getfield 199	bww:g	Lbwv;
    //   811: aload_0
    //   812: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   815: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   818: aload_1
    //   819: ifnull +7 -> 826
    //   822: aload_1
    //   823: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   826: aload 5
    //   828: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   831: aload 5
    //   833: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   836: aload_0
    //   837: getfield 52	bww:f	Lbtg;
    //   840: ifnull +15 -> 855
    //   843: aload_0
    //   844: getfield 52	bww:f	Lbtg;
    //   847: invokevirtual 241	btg:d	()V
    //   850: aload_0
    //   851: aconst_null
    //   852: putfield 52	bww:f	Lbtg;
    //   855: aload_2
    //   856: monitorexit
    //   857: goto +1610 -> 2467
    //   860: aload_0
    //   861: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   864: getfield 137	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mUrl	Ljava/lang/String;
    //   867: astore 23
    //   869: goto -442 -> 427
    //   872: iload 25
    //   874: sipush 200
    //   877: if_icmpne -320 -> 557
    //   880: aload_0
    //   881: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   884: iconst_0
    //   885: putfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   888: aload_0
    //   889: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   892: aload_0
    //   893: getfield 52	bww:f	Lbtg;
    //   896: invokevirtual 360	btg:f	()J
    //   899: putfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   902: goto -345 -> 557
    //   905: astore 22
    //   907: aload 22
    //   909: athrow
    //   910: astore 14
    //   912: aconst_null
    //   913: astore 5
    //   915: aload 14
    //   917: invokevirtual 361	com/tencent/tmsecure/exception/NetWorkException:printStackTrace	()V
    //   920: aload_0
    //   921: getfield 50	bww:e	Z
    //   924: ifeq +35 -> 959
    //   927: aload_0
    //   928: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   931: iconst_2
    //   932: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   935: aload_0
    //   936: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   939: aload 14
    //   941: invokevirtual 364	com/tencent/tmsecure/exception/NetWorkException:getErrCode	()I
    //   944: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   947: aload_0
    //   948: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   951: aload 14
    //   953: invokevirtual 367	com/tencent/tmsecure/exception/NetWorkException:getErrMsg	()Ljava/lang/String;
    //   956: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   959: aload_0
    //   960: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   963: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   966: aload_0
    //   967: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   970: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   973: lcmp
    //   974: ifne +15 -> 989
    //   977: aload_0
    //   978: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   981: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   984: lconst_0
    //   985: lcmp
    //   986: ifgt +55 -> 1041
    //   989: aload_0
    //   990: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   993: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   996: iconst_2
    //   997: if_icmpeq +579 -> 1576
    //   1000: aload_0
    //   1001: getfield 50	bww:e	Z
    //   1004: ifeq +572 -> 1576
    //   1007: aload_0
    //   1008: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1011: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   1014: ifne +562 -> 1576
    //   1017: aload_0
    //   1018: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1021: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1024: lconst_0
    //   1025: lcmp
    //   1026: ifgt +550 -> 1576
    //   1029: aload_0
    //   1030: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1033: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1036: lconst_0
    //   1037: lcmp
    //   1038: ifle +538 -> 1576
    //   1041: aload_0
    //   1042: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1045: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1048: iconst_2
    //   1049: if_icmpeq +21 -> 1070
    //   1052: aload_0
    //   1053: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1056: iconst_0
    //   1057: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   1060: aload_0
    //   1061: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1064: ldc_w 319
    //   1067: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   1070: aload_0
    //   1071: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1074: iconst_m1
    //   1075: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   1078: aload_0
    //   1079: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1082: iconst_3
    //   1083: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1086: aload_0
    //   1087: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1090: aconst_null
    //   1091: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   1094: aload_0
    //   1095: getfield 52	bww:f	Lbtg;
    //   1098: ifnull +503 -> 1601
    //   1101: aload_0
    //   1102: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1105: aload_0
    //   1106: getfield 52	bww:f	Lbtg;
    //   1109: invokevirtual 332	btg:h	()Ljava/lang/String;
    //   1112: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1115: ldc_w 337
    //   1118: aload_0
    //   1119: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1122: getfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1125: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1128: ifeq +28 -> 1156
    //   1131: aload_0
    //   1132: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1135: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1138: iconst_2
    //   1139: if_icmpne +17 -> 1156
    //   1142: aload_0
    //   1143: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1146: aload_0
    //   1147: getfield 52	bww:f	Lbtg;
    //   1150: invokevirtual 345	btg:g	()Ljava/lang/String;
    //   1153: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   1156: aload_0
    //   1157: getfield 199	bww:g	Lbwv;
    //   1160: aload_0
    //   1161: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1164: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   1167: aload_1
    //   1168: ifnull +7 -> 1175
    //   1171: aload_1
    //   1172: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   1175: aload 5
    //   1177: ifnull +13 -> 1190
    //   1180: aload 5
    //   1182: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   1185: aload 5
    //   1187: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   1190: aload_0
    //   1191: getfield 52	bww:f	Lbtg;
    //   1194: ifnull -339 -> 855
    //   1197: aload_0
    //   1198: getfield 52	bww:f	Lbtg;
    //   1201: invokevirtual 241	btg:d	()V
    //   1204: aload_0
    //   1205: aconst_null
    //   1206: putfield 52	bww:f	Lbtg;
    //   1209: goto -354 -> 855
    //   1212: astore 21
    //   1214: new 79	com/tencent/tmsecure/exception/NetWorkException
    //   1217: dup
    //   1218: bipush 254
    //   1220: new 103	java/lang/StringBuilder
    //   1223: dup
    //   1224: ldc_w 369
    //   1227: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1230: aload 21
    //   1232: invokevirtual 294	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1235: invokevirtual 299	java/lang/Class:getName	()Ljava/lang/String;
    //   1238: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1241: ldc_w 371
    //   1244: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1247: aload 21
    //   1249: invokevirtual 210	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1252: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1255: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1258: invokespecial 119	com/tencent/tmsecure/exception/NetWorkException:<init>	(ILjava/lang/String;)V
    //   1261: athrow
    //   1262: astore 11
    //   1264: aconst_null
    //   1265: astore 5
    //   1267: aload 11
    //   1269: invokevirtual 372	java/io/FileNotFoundException:printStackTrace	()V
    //   1272: aload_0
    //   1273: getfield 50	bww:e	Z
    //   1276: ifeq +33 -> 1309
    //   1279: aload_0
    //   1280: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1283: iconst_2
    //   1284: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1287: aload_0
    //   1288: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1291: sipush -7001
    //   1294: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   1297: aload_0
    //   1298: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1301: aload 11
    //   1303: invokevirtual 373	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   1306: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   1309: aload_0
    //   1310: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1313: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1316: aload_0
    //   1317: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1320: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1323: lcmp
    //   1324: ifne +15 -> 1339
    //   1327: aload_0
    //   1328: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1331: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1334: lconst_0
    //   1335: lcmp
    //   1336: ifgt +55 -> 1391
    //   1339: aload_0
    //   1340: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1343: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1346: iconst_2
    //   1347: if_icmpeq +287 -> 1634
    //   1350: aload_0
    //   1351: getfield 50	bww:e	Z
    //   1354: ifeq +280 -> 1634
    //   1357: aload_0
    //   1358: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1361: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   1364: ifne +270 -> 1634
    //   1367: aload_0
    //   1368: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1371: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1374: lconst_0
    //   1375: lcmp
    //   1376: ifgt +258 -> 1634
    //   1379: aload_0
    //   1380: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1383: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1386: lconst_0
    //   1387: lcmp
    //   1388: ifle +246 -> 1634
    //   1391: aload_0
    //   1392: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1395: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1398: iconst_2
    //   1399: if_icmpeq +21 -> 1420
    //   1402: aload_0
    //   1403: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1406: iconst_0
    //   1407: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   1410: aload_0
    //   1411: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1414: ldc_w 319
    //   1417: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   1420: aload_0
    //   1421: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1424: iconst_m1
    //   1425: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   1428: aload_0
    //   1429: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1432: iconst_3
    //   1433: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1436: aload_0
    //   1437: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1440: aconst_null
    //   1441: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   1444: aload_0
    //   1445: getfield 52	bww:f	Lbtg;
    //   1448: ifnull +211 -> 1659
    //   1451: aload_0
    //   1452: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1455: aload_0
    //   1456: getfield 52	bww:f	Lbtg;
    //   1459: invokevirtual 332	btg:h	()Ljava/lang/String;
    //   1462: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1465: ldc_w 337
    //   1468: aload_0
    //   1469: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1472: getfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1475: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1478: ifeq +28 -> 1506
    //   1481: aload_0
    //   1482: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1485: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1488: iconst_2
    //   1489: if_icmpne +17 -> 1506
    //   1492: aload_0
    //   1493: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1496: aload_0
    //   1497: getfield 52	bww:f	Lbtg;
    //   1500: invokevirtual 345	btg:g	()Ljava/lang/String;
    //   1503: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   1506: aload_0
    //   1507: getfield 199	bww:g	Lbwv;
    //   1510: aload_0
    //   1511: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1514: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   1517: aload_1
    //   1518: ifnull +7 -> 1525
    //   1521: aload_1
    //   1522: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   1525: aload 5
    //   1527: ifnull +13 -> 1540
    //   1530: aload 5
    //   1532: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   1535: aload 5
    //   1537: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   1540: aload_0
    //   1541: getfield 52	bww:f	Lbtg;
    //   1544: ifnull -689 -> 855
    //   1547: aload_0
    //   1548: getfield 52	bww:f	Lbtg;
    //   1551: invokevirtual 241	btg:d	()V
    //   1554: aload_0
    //   1555: aconst_null
    //   1556: putfield 52	bww:f	Lbtg;
    //   1559: goto -704 -> 855
    //   1562: aload_0
    //   1563: aload 5
    //   1565: invokespecial 275	bww:b	(Ljava/io/FileOutputStream;)V
    //   1568: goto -963 -> 605
    //   1571: astore 14
    //   1573: goto -658 -> 915
    //   1576: aload_0
    //   1577: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1580: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1583: iconst_2
    //   1584: if_icmpne -498 -> 1086
    //   1587: aload_0
    //   1588: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1591: iconst_5
    //   1592: invokestatic 351	com/tencent/tmsecure/utils/WifiUtil:calculateSignalLevel	(I)I
    //   1595: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   1598: goto -512 -> 1086
    //   1601: aload_0
    //   1602: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1605: ldc_w 319
    //   1608: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1611: goto -455 -> 1156
    //   1614: astore 16
    //   1616: aload 16
    //   1618: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1621: goto -446 -> 1175
    //   1624: astore 15
    //   1626: aload 15
    //   1628: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1631: goto -441 -> 1190
    //   1634: aload_0
    //   1635: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1638: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1641: iconst_2
    //   1642: if_icmpne -206 -> 1436
    //   1645: aload_0
    //   1646: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1649: iconst_5
    //   1650: invokestatic 351	com/tencent/tmsecure/utils/WifiUtil:calculateSignalLevel	(I)I
    //   1653: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   1656: goto -220 -> 1436
    //   1659: aload_0
    //   1660: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1663: ldc_w 319
    //   1666: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1669: goto -163 -> 1506
    //   1672: astore 13
    //   1674: aload 13
    //   1676: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1679: goto -154 -> 1525
    //   1682: astore 12
    //   1684: aload 12
    //   1686: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   1689: goto -149 -> 1540
    //   1692: astore 8
    //   1694: aconst_null
    //   1695: astore 5
    //   1697: aload 8
    //   1699: invokevirtual 213	java/lang/Exception:printStackTrace	()V
    //   1702: aload_0
    //   1703: getfield 50	bww:e	Z
    //   1706: ifeq +66 -> 1772
    //   1709: aload_0
    //   1710: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1713: iconst_2
    //   1714: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1717: aload_0
    //   1718: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1721: sipush -7002
    //   1724: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   1727: aload_0
    //   1728: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1731: new 103	java/lang/StringBuilder
    //   1734: dup
    //   1735: ldc_w 375
    //   1738: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1741: aload 8
    //   1743: invokevirtual 294	java/lang/Object:getClass	()Ljava/lang/Class;
    //   1746: invokevirtual 299	java/lang/Class:getName	()Ljava/lang/String;
    //   1749: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1752: ldc_w 301
    //   1755: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1758: aload 8
    //   1760: invokevirtual 210	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1763: invokevirtual 184	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1766: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1769: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   1772: aload_0
    //   1773: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1776: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1779: aload_0
    //   1780: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1783: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1786: lcmp
    //   1787: ifne +15 -> 1802
    //   1790: aload_0
    //   1791: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1794: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1797: lconst_0
    //   1798: lcmp
    //   1799: ifgt +55 -> 1854
    //   1802: aload_0
    //   1803: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1806: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1809: iconst_2
    //   1810: if_icmpeq +215 -> 2025
    //   1813: aload_0
    //   1814: getfield 50	bww:e	Z
    //   1817: ifeq +208 -> 2025
    //   1820: aload_0
    //   1821: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1824: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   1827: ifne +198 -> 2025
    //   1830: aload_0
    //   1831: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1834: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   1837: lconst_0
    //   1838: lcmp
    //   1839: ifgt +186 -> 2025
    //   1842: aload_0
    //   1843: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1846: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   1849: lconst_0
    //   1850: lcmp
    //   1851: ifle +174 -> 2025
    //   1854: aload_0
    //   1855: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1858: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1861: iconst_2
    //   1862: if_icmpeq +21 -> 1883
    //   1865: aload_0
    //   1866: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1869: iconst_0
    //   1870: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   1873: aload_0
    //   1874: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1877: ldc_w 319
    //   1880: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   1883: aload_0
    //   1884: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1887: iconst_m1
    //   1888: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   1891: aload_0
    //   1892: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1895: iconst_3
    //   1896: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1899: aload_0
    //   1900: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1903: aconst_null
    //   1904: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   1907: aload_0
    //   1908: getfield 52	bww:f	Lbtg;
    //   1911: ifnull +139 -> 2050
    //   1914: aload_0
    //   1915: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1918: aload_0
    //   1919: getfield 52	bww:f	Lbtg;
    //   1922: invokevirtual 332	btg:h	()Ljava/lang/String;
    //   1925: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1928: ldc_w 337
    //   1931: aload_0
    //   1932: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1935: getfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   1938: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1941: ifeq +28 -> 1969
    //   1944: aload_0
    //   1945: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1948: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   1951: iconst_2
    //   1952: if_icmpne +17 -> 1969
    //   1955: aload_0
    //   1956: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1959: aload_0
    //   1960: getfield 52	bww:f	Lbtg;
    //   1963: invokevirtual 345	btg:g	()Ljava/lang/String;
    //   1966: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   1969: aload_0
    //   1970: getfield 199	bww:g	Lbwv;
    //   1973: aload_0
    //   1974: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   1977: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   1980: aload_1
    //   1981: ifnull +7 -> 1988
    //   1984: aload_1
    //   1985: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   1988: aload 5
    //   1990: ifnull +13 -> 2003
    //   1993: aload 5
    //   1995: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   1998: aload 5
    //   2000: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   2003: aload_0
    //   2004: getfield 52	bww:f	Lbtg;
    //   2007: ifnull -1152 -> 855
    //   2010: aload_0
    //   2011: getfield 52	bww:f	Lbtg;
    //   2014: invokevirtual 241	btg:d	()V
    //   2017: aload_0
    //   2018: aconst_null
    //   2019: putfield 52	bww:f	Lbtg;
    //   2022: goto -1167 -> 855
    //   2025: aload_0
    //   2026: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2029: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2032: iconst_2
    //   2033: if_icmpne -134 -> 1899
    //   2036: aload_0
    //   2037: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2040: iconst_5
    //   2041: invokestatic 351	com/tencent/tmsecure/utils/WifiUtil:calculateSignalLevel	(I)I
    //   2044: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   2047: goto -148 -> 1899
    //   2050: aload_0
    //   2051: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2054: ldc_w 319
    //   2057: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   2060: goto -91 -> 1969
    //   2063: astore 10
    //   2065: aload 10
    //   2067: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   2070: goto -82 -> 1988
    //   2073: astore 9
    //   2075: aload 9
    //   2077: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   2080: goto -77 -> 2003
    //   2083: aload_0
    //   2084: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2087: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   2090: aload_0
    //   2091: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2094: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   2097: lcmp
    //   2098: ifne +15 -> 2113
    //   2101: aload_0
    //   2102: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2105: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   2108: lconst_0
    //   2109: lcmp
    //   2110: ifgt +55 -> 2165
    //   2113: aload_0
    //   2114: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2117: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2120: iconst_2
    //   2121: if_icmpeq +215 -> 2336
    //   2124: aload_0
    //   2125: getfield 50	bww:e	Z
    //   2128: ifeq +208 -> 2336
    //   2131: aload_0
    //   2132: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2135: getfield 251	com/tencent/tmsecure/module/networkload/NetworkLoadTask:isSupportRange	Z
    //   2138: ifne +198 -> 2336
    //   2141: aload_0
    //   2142: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2145: getfield 176	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mSize	J
    //   2148: lconst_0
    //   2149: lcmp
    //   2150: ifgt +186 -> 2336
    //   2153: aload_0
    //   2154: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2157: getfield 152	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mCurrentSize	J
    //   2160: lconst_0
    //   2161: lcmp
    //   2162: ifle +174 -> 2336
    //   2165: aload_0
    //   2166: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2169: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2172: iconst_2
    //   2173: if_icmpeq +21 -> 2194
    //   2176: aload_0
    //   2177: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2180: iconst_0
    //   2181: putfield 317	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorCode	I
    //   2184: aload_0
    //   2185: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2188: ldc_w 319
    //   2191: putfield 322	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorMsg	Ljava/lang/String;
    //   2194: aload_0
    //   2195: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2198: iconst_m1
    //   2199: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   2202: aload_0
    //   2203: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2206: iconst_3
    //   2207: putfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2210: aload_0
    //   2211: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2214: aconst_null
    //   2215: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   2218: aload_0
    //   2219: getfield 52	bww:f	Lbtg;
    //   2222: ifnull +139 -> 2361
    //   2225: aload_0
    //   2226: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2229: aload_0
    //   2230: getfield 52	bww:f	Lbtg;
    //   2233: invokevirtual 332	btg:h	()Ljava/lang/String;
    //   2236: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   2239: ldc_w 337
    //   2242: aload_0
    //   2243: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2246: getfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   2249: invokevirtual 343	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   2252: ifeq +28 -> 2280
    //   2255: aload_0
    //   2256: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2259: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2262: iconst_2
    //   2263: if_icmpne +17 -> 2280
    //   2266: aload_0
    //   2267: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2270: aload_0
    //   2271: getfield 52	bww:f	Lbtg;
    //   2274: invokevirtual 345	btg:g	()Ljava/lang/String;
    //   2277: putfield 330	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mRedirectUrl	Ljava/lang/String;
    //   2280: aload_0
    //   2281: getfield 199	bww:g	Lbwv;
    //   2284: aload_0
    //   2285: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2288: invokevirtual 327	bwv:a	(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    //   2291: aload_1
    //   2292: ifnull +7 -> 2299
    //   2295: aload_1
    //   2296: invokevirtual 239	java/nio/channels/FileChannel:close	()V
    //   2299: aload 5
    //   2301: ifnull +13 -> 2314
    //   2304: aload 5
    //   2306: invokevirtual 256	java/io/FileOutputStream:flush	()V
    //   2309: aload 5
    //   2311: invokevirtual 214	java/io/FileOutputStream:close	()V
    //   2314: aload_0
    //   2315: getfield 52	bww:f	Lbtg;
    //   2318: ifnull +15 -> 2333
    //   2321: aload_0
    //   2322: getfield 52	bww:f	Lbtg;
    //   2325: invokevirtual 241	btg:d	()V
    //   2328: aload_0
    //   2329: aconst_null
    //   2330: putfield 52	bww:f	Lbtg;
    //   2333: aload 4
    //   2335: athrow
    //   2336: aload_0
    //   2337: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2340: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2343: iconst_2
    //   2344: if_icmpne -134 -> 2210
    //   2347: aload_0
    //   2348: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2351: iconst_5
    //   2352: invokestatic 351	com/tencent/tmsecure/utils/WifiUtil:calculateSignalLevel	(I)I
    //   2355: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   2358: goto -148 -> 2210
    //   2361: aload_0
    //   2362: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2365: ldc_w 319
    //   2368: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   2371: goto -91 -> 2280
    //   2374: astore 7
    //   2376: aload 7
    //   2378: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   2381: goto -82 -> 2299
    //   2384: astore 6
    //   2386: aload 6
    //   2388: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   2391: goto -77 -> 2314
    //   2394: aload_0
    //   2395: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2398: getfield 314	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mState	I
    //   2401: iconst_2
    //   2402: if_icmpne -1665 -> 737
    //   2405: aload_0
    //   2406: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2409: iconst_5
    //   2410: invokestatic 351	com/tencent/tmsecure/utils/WifiUtil:calculateSignalLevel	(I)I
    //   2413: putfield 325	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mErrorRssi	I
    //   2416: goto -1679 -> 737
    //   2419: aload_0
    //   2420: getfield 56	bww:c	Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    //   2423: ldc_w 319
    //   2426: putfield 335	com/tencent/tmsecure/module/networkload/NetworkLoadTask:mHostAddress	Ljava/lang/String;
    //   2429: goto -1622 -> 807
    //   2432: astore 20
    //   2434: aload 20
    //   2436: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   2439: goto -1613 -> 826
    //   2442: astore 19
    //   2444: aload 19
    //   2446: invokevirtual 278	java/io/IOException:printStackTrace	()V
    //   2449: goto -1613 -> 836
    //   2452: astore 4
    //   2454: goto -371 -> 2083
    //   2457: astore 8
    //   2459: goto -762 -> 1697
    //   2462: astore 11
    //   2464: goto -1197 -> 1267
    //   2467: return
    //   2468: astore 4
    //   2470: aconst_null
    //   2471: astore_1
    //   2472: aconst_null
    //   2473: astore 5
    //   2475: goto -392 -> 2083
    //
    // Exception table:
    //   from	to	target	type
    //   9	29	369	finally
    //   112	366	369	finally
    //   374	384	369	finally
    //   610	818	369	finally
    //   822	826	369	finally
    //   826	836	369	finally
    //   836	857	369	finally
    //   959	1167	369	finally
    //   1171	1175	369	finally
    //   1180	1190	369	finally
    //   1190	1209	369	finally
    //   1309	1517	369	finally
    //   1521	1525	369	finally
    //   1530	1540	369	finally
    //   1540	1559	369	finally
    //   1576	1689	369	finally
    //   1772	1980	369	finally
    //   1984	1988	369	finally
    //   1993	2003	369	finally
    //   2003	2291	369	finally
    //   2295	2299	369	finally
    //   2304	2314	369	finally
    //   2314	2449	369	finally
    //   398	557	905	com/tencent/tmsecure/exception/NetWorkException
    //   860	902	905	com/tencent/tmsecure/exception/NetWorkException
    //   29	112	910	com/tencent/tmsecure/exception/NetWorkException
    //   387	393	910	com/tencent/tmsecure/exception/NetWorkException
    //   557	571	910	com/tencent/tmsecure/exception/NetWorkException
    //   907	910	910	com/tencent/tmsecure/exception/NetWorkException
    //   1214	1262	910	com/tencent/tmsecure/exception/NetWorkException
    //   398	557	1212	java/lang/Exception
    //   860	902	1212	java/lang/Exception
    //   29	112	1262	java/io/FileNotFoundException
    //   387	393	1262	java/io/FileNotFoundException
    //   398	557	1262	java/io/FileNotFoundException
    //   557	571	1262	java/io/FileNotFoundException
    //   860	902	1262	java/io/FileNotFoundException
    //   907	910	1262	java/io/FileNotFoundException
    //   1214	1262	1262	java/io/FileNotFoundException
    //   571	610	1571	com/tencent/tmsecure/exception/NetWorkException
    //   1562	1568	1571	com/tencent/tmsecure/exception/NetWorkException
    //   1171	1175	1614	java/io/IOException
    //   1180	1190	1624	java/io/IOException
    //   1521	1525	1672	java/io/IOException
    //   1530	1540	1682	java/io/IOException
    //   29	112	1692	java/lang/Exception
    //   387	393	1692	java/lang/Exception
    //   557	571	1692	java/lang/Exception
    //   907	910	1692	java/lang/Exception
    //   1214	1262	1692	java/lang/Exception
    //   1984	1988	2063	java/io/IOException
    //   1993	2003	2073	java/io/IOException
    //   2295	2299	2374	java/io/IOException
    //   2304	2314	2384	java/io/IOException
    //   822	826	2432	java/io/IOException
    //   826	836	2442	java/io/IOException
    //   571	610	2452	finally
    //   915	959	2452	finally
    //   1267	1309	2452	finally
    //   1562	1568	2452	finally
    //   1697	1772	2452	finally
    //   571	610	2457	java/lang/Exception
    //   1562	1568	2457	java/lang/Exception
    //   571	610	2462	java/io/FileNotFoundException
    //   1562	1568	2462	java/io/FileNotFoundException
    //   29	112	2468	finally
    //   387	393	2468	finally
    //   398	557	2468	finally
    //   557	571	2468	finally
    //   860	902	2468	finally
    //   907	910	2468	finally
    //   1214	1262	2468	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bww
 * JD-Core Version:    0.6.2
 */
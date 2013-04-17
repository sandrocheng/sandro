import QQPIM.uploadPacketInfoResp;
import android.content.Context;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tccdb.TccCryptor;

public final class bti
{
  public String a = "http://uploadserver.3g.qq.com";
  private Context b;

  public bti(Context paramContext)
  {
    this.b = paramContext;
  }

  private uploadPacketInfoResp a(byte[] paramArrayOfByte)
  {
    Object localObject = null;
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject;
      UniAttribute localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      try
      {
        localUniAttribute.decode(TccCryptor.decrypt(this.b, paramArrayOfByte, null));
        localuploadPacketInfoResp = (uploadPacketInfoResp)localUniAttribute.get("key_UploadPacketInfoResp");
        localObject = localuploadPacketInfoResp;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          uploadPacketInfoResp localuploadPacketInfoResp = null;
        }
      }
    }
  }

  // ERROR //
  public final int a(String paramString, QQPIM.UploadFileInfo paramUploadFileInfo)
  {
    // Byte code:
    //   0: new 61	java/io/File
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 63	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore_3
    //   9: aload_3
    //   10: invokevirtual 67	java/io/File:exists	()Z
    //   13: ifne +9 -> 22
    //   16: iconst_m1
    //   17: istore 8
    //   19: iload 8
    //   21: ireturn
    //   22: new 69	java/io/RandomAccessFile
    //   25: dup
    //   26: aload_3
    //   27: ldc 71
    //   29: invokespecial 74	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   32: astore 4
    //   34: sipush 20480
    //   37: newarray byte
    //   39: astore 5
    //   41: aconst_null
    //   42: astore 6
    //   44: aload_2
    //   45: ifnull +48 -> 93
    //   48: aload_2
    //   49: invokevirtual 80	QQPIM/UploadFileInfo:getVecUploadFile	()Ljava/util/ArrayList;
    //   52: astore 18
    //   54: aconst_null
    //   55: astore 6
    //   57: aload 18
    //   59: ifnull +34 -> 93
    //   62: aload_2
    //   63: invokevirtual 80	QQPIM/UploadFileInfo:getVecUploadFile	()Ljava/util/ArrayList;
    //   66: invokevirtual 86	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   69: astore 19
    //   71: bipush 254
    //   73: istore 20
    //   75: aload 5
    //   77: astore 21
    //   79: aload 19
    //   81: invokeinterface 91 1 0
    //   86: istore 23
    //   88: iload 23
    //   90: ifne +32 -> 122
    //   93: aload 4
    //   95: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   98: aload 6
    //   100: ifnull +8 -> 108
    //   103: aload 6
    //   105: invokevirtual 99	btg:d	()V
    //   108: iconst_0
    //   109: istore 8
    //   111: goto -92 -> 19
    //   114: astore 50
    //   116: iconst_m1
    //   117: istore 8
    //   119: goto -100 -> 19
    //   122: aload 19
    //   124: invokeinterface 103 1 0
    //   129: checkcast 105	QQPIM/UploadFile
    //   132: astore 24
    //   134: aload 24
    //   136: invokevirtual 109	QQPIM/UploadFile:getPos	()I
    //   139: i2l
    //   140: lstore 25
    //   142: aload 24
    //   144: invokevirtual 112	QQPIM/UploadFile:getSize	()I
    //   147: istore 27
    //   149: aload 4
    //   151: lload 25
    //   153: invokevirtual 116	java/io/RandomAccessFile:seek	(J)V
    //   156: iload 27
    //   158: aload 21
    //   160: arraylength
    //   161: if_icmpeq +649 -> 810
    //   164: iload 27
    //   166: newarray byte
    //   168: astore 28
    //   170: aload 4
    //   172: aload 28
    //   174: iconst_0
    //   175: iload 27
    //   177: invokevirtual 120	java/io/RandomAccessFile:read	([BII)I
    //   180: istore 29
    //   182: iload 29
    //   184: iconst_m1
    //   185: if_icmpeq +10 -> 195
    //   188: iload 29
    //   190: iload 27
    //   192: if_icmpeq +36 -> 228
    //   195: aload 4
    //   197: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   200: aload 6
    //   202: ifnull +8 -> 210
    //   205: aload 6
    //   207: invokevirtual 99	btg:d	()V
    //   210: sipush -2060
    //   213: istore 8
    //   215: goto -196 -> 19
    //   218: astore 30
    //   220: aload 30
    //   222: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   225: goto -25 -> 200
    //   228: aload_2
    //   229: invokevirtual 125	QQPIM/UploadFileInfo:getId	()Ljava/lang/String;
    //   232: astore 31
    //   234: aload 31
    //   236: ifnull +596 -> 832
    //   239: aload 28
    //   241: arraylength
    //   242: ifne +89 -> 331
    //   245: goto +587 -> 832
    //   248: aload_0
    //   249: getfield 17	bti:a	Ljava/lang/String;
    //   252: invokestatic 128	btg:a	(Ljava/lang/String;)Lbtg;
    //   255: astore 33
    //   257: aload 33
    //   259: astore 12
    //   261: aload 12
    //   263: ldc 130
    //   265: invokevirtual 132	btg:b	(Ljava/lang/String;)V
    //   268: aload 12
    //   270: aload 32
    //   272: invokevirtual 134	btg:a	([B)V
    //   275: aload 12
    //   277: invokevirtual 136	btg:a	()I
    //   280: pop
    //   281: new 138	java/util/concurrent/atomic/AtomicReference
    //   284: dup
    //   285: invokespecial 139	java/util/concurrent/atomic/AtomicReference:<init>	()V
    //   288: astore 36
    //   290: aload 12
    //   292: aload 36
    //   294: invokevirtual 142	btg:a	(Ljava/util/concurrent/atomic/AtomicReference;)I
    //   297: istore 37
    //   299: aload 12
    //   301: invokevirtual 99	btg:d	()V
    //   304: iload 37
    //   306: ifeq +259 -> 565
    //   309: aload 4
    //   311: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   314: aload 12
    //   316: ifnull +8 -> 324
    //   319: aload 12
    //   321: invokevirtual 99	btg:d	()V
    //   324: iload 37
    //   326: istore 8
    //   328: goto -309 -> 19
    //   331: aload 28
    //   333: invokestatic 147	btk:a	([B)[B
    //   336: astore 44
    //   338: aload 44
    //   340: arraylength
    //   341: istore 45
    //   343: new 149	QQPIM/uploadPacketInfoReq
    //   346: dup
    //   347: invokespecial 150	QQPIM/uploadPacketInfoReq:<init>	()V
    //   350: astore 46
    //   352: aload 46
    //   354: aload 31
    //   356: invokevirtual 153	QQPIM/uploadPacketInfoReq:setSoftware_id	(Ljava/lang/String;)V
    //   359: aload 46
    //   361: lload 25
    //   363: invokevirtual 156	QQPIM/uploadPacketInfoReq:setPacket_pos	(J)V
    //   366: aload 46
    //   368: iload 27
    //   370: invokevirtual 160	QQPIM/uploadPacketInfoReq:setPacket_size	(I)V
    //   373: aload 46
    //   375: ldc 162
    //   377: invokevirtual 165	QQPIM/uploadPacketInfoReq:setChecksum_type	(Ljava/lang/String;)V
    //   380: aload 46
    //   382: iload 45
    //   384: invokevirtual 168	QQPIM/uploadPacketInfoReq:setChecksun_len	(I)V
    //   387: aload 46
    //   389: iconst_0
    //   390: invokevirtual 171	QQPIM/uploadPacketInfoReq:setZip_type	(I)V
    //   393: new 24	com/qq/jce/wup/UniAttribute
    //   396: dup
    //   397: invokespecial 25	com/qq/jce/wup/UniAttribute:<init>	()V
    //   400: astore 47
    //   402: aload 47
    //   404: ldc 27
    //   406: invokevirtual 31	com/qq/jce/wup/UniAttribute:setEncodeName	(Ljava/lang/String;)V
    //   409: aload 47
    //   411: ldc 173
    //   413: aload 46
    //   415: invokevirtual 177	com/qq/jce/wup/UniAttribute:put	(Ljava/lang/String;Ljava/lang/Object;)V
    //   418: aload 47
    //   420: invokevirtual 181	com/qq/jce/wup/UniAttribute:encode	()[B
    //   423: astore 48
    //   425: aload 48
    //   427: ifnonnull +9 -> 436
    //   430: aconst_null
    //   431: astore 32
    //   433: goto -185 -> 248
    //   436: aload 48
    //   438: arraylength
    //   439: istore 49
    //   441: iload 49
    //   443: iconst_4
    //   444: iadd
    //   445: aload 28
    //   447: arraylength
    //   448: iadd
    //   449: aload 44
    //   451: arraylength
    //   452: iadd
    //   453: newarray byte
    //   455: astore 32
    //   457: aload 48
    //   459: arraylength
    //   460: invokestatic 184	btk:a	(I)[B
    //   463: iconst_0
    //   464: aload 32
    //   466: iconst_0
    //   467: iconst_4
    //   468: invokestatic 190	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   471: aload 48
    //   473: iconst_0
    //   474: aload 32
    //   476: iconst_4
    //   477: iload 49
    //   479: invokestatic 190	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   482: aload 28
    //   484: iconst_0
    //   485: aload 32
    //   487: iload 49
    //   489: iconst_4
    //   490: iadd
    //   491: aload 28
    //   493: arraylength
    //   494: invokestatic 190	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   497: aload 44
    //   499: iconst_0
    //   500: aload 32
    //   502: iload 49
    //   504: iconst_4
    //   505: iadd
    //   506: aload 28
    //   508: arraylength
    //   509: iadd
    //   510: aload 44
    //   512: arraylength
    //   513: invokestatic 190	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   516: goto -268 -> 248
    //   519: astore 15
    //   521: aload 15
    //   523: invokevirtual 191	com/tencent/tmsecure/exception/NetWorkException:printStackTrace	()V
    //   526: aload 15
    //   528: invokevirtual 194	com/tencent/tmsecure/exception/NetWorkException:getErrCode	()I
    //   531: istore 16
    //   533: iload 16
    //   535: istore 8
    //   537: aload 4
    //   539: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   542: aload 6
    //   544: ifnull -525 -> 19
    //   547: aload 6
    //   549: invokevirtual 99	btg:d	()V
    //   552: goto -533 -> 19
    //   555: astore 43
    //   557: aload 43
    //   559: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   562: goto -248 -> 314
    //   565: aload 36
    //   567: invokevirtual 196	java/util/concurrent/atomic/AtomicReference:get	()Ljava/lang/Object;
    //   570: checkcast 198	[B
    //   573: astore 39
    //   575: aload 39
    //   577: ifnonnull +31 -> 608
    //   580: sipush -4000
    //   583: istore 8
    //   585: iload 8
    //   587: ifeq +230 -> 817
    //   590: aload 4
    //   592: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   595: aload 12
    //   597: ifnull -578 -> 19
    //   600: aload 12
    //   602: invokevirtual 99	btg:d	()V
    //   605: goto -586 -> 19
    //   608: aload_0
    //   609: aload 39
    //   611: invokespecial 200	bti:a	([B)LQQPIM/uploadPacketInfoResp;
    //   614: astore 40
    //   616: aload 40
    //   618: ifnonnull +11 -> 629
    //   621: sipush -4000
    //   624: istore 8
    //   626: goto -41 -> 585
    //   629: aload 40
    //   631: invokevirtual 203	QQPIM/uploadPacketInfoResp:getIs_succ	()I
    //   634: istore 41
    //   636: iload 41
    //   638: istore 8
    //   640: goto -55 -> 585
    //   643: astore 42
    //   645: aload 42
    //   647: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   650: goto -55 -> 595
    //   653: astore 17
    //   655: aload 17
    //   657: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   660: goto -118 -> 542
    //   663: astore 11
    //   665: bipush 254
    //   667: istore 8
    //   669: aconst_null
    //   670: astore 12
    //   672: aload 11
    //   674: astore 13
    //   676: aload 13
    //   678: invokevirtual 52	java/lang/Exception:printStackTrace	()V
    //   681: aload 4
    //   683: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   686: aload 12
    //   688: ifnull -669 -> 19
    //   691: aload 12
    //   693: invokevirtual 99	btg:d	()V
    //   696: goto -677 -> 19
    //   699: astore 14
    //   701: aload 14
    //   703: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   706: goto -20 -> 686
    //   709: astore 9
    //   711: aload 4
    //   713: invokevirtual 94	java/io/RandomAccessFile:close	()V
    //   716: aload 6
    //   718: ifnull +8 -> 726
    //   721: aload 6
    //   723: invokevirtual 99	btg:d	()V
    //   726: aload 9
    //   728: athrow
    //   729: astore 10
    //   731: aload 10
    //   733: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   736: goto -20 -> 716
    //   739: astore 7
    //   741: aload 7
    //   743: invokevirtual 121	java/io/IOException:printStackTrace	()V
    //   746: goto -648 -> 98
    //   749: astore 9
    //   751: aload 12
    //   753: astore 6
    //   755: goto -44 -> 711
    //   758: astore 34
    //   760: aload 34
    //   762: astore 13
    //   764: iload 20
    //   766: istore 8
    //   768: goto -92 -> 676
    //   771: astore 38
    //   773: iload 37
    //   775: istore 8
    //   777: aload 38
    //   779: astore 13
    //   781: goto -105 -> 676
    //   784: astore 22
    //   786: aload 6
    //   788: astore 12
    //   790: aload 22
    //   792: astore 13
    //   794: iload 20
    //   796: istore 8
    //   798: goto -122 -> 676
    //   801: astore 15
    //   803: aload 12
    //   805: astore 6
    //   807: goto -286 -> 521
    //   810: aload 21
    //   812: astore 28
    //   814: goto -644 -> 170
    //   817: aload 12
    //   819: astore 6
    //   821: iload 8
    //   823: istore 20
    //   825: aload 28
    //   827: astore 21
    //   829: goto -750 -> 79
    //   832: aconst_null
    //   833: astore 32
    //   835: goto -587 -> 248
    //
    // Exception table:
    //   from	to	target	type
    //   22	34	114	java/io/FileNotFoundException
    //   195	200	218	java/io/IOException
    //   48	71	519	com/tencent/tmsecure/exception/NetWorkException
    //   79	88	519	com/tencent/tmsecure/exception/NetWorkException
    //   122	182	519	com/tencent/tmsecure/exception/NetWorkException
    //   228	257	519	com/tencent/tmsecure/exception/NetWorkException
    //   331	516	519	com/tencent/tmsecure/exception/NetWorkException
    //   309	314	555	java/io/IOException
    //   590	595	643	java/io/IOException
    //   537	542	653	java/io/IOException
    //   48	71	663	java/lang/Exception
    //   681	686	699	java/io/IOException
    //   48	71	709	finally
    //   79	88	709	finally
    //   122	182	709	finally
    //   228	257	709	finally
    //   331	516	709	finally
    //   521	533	709	finally
    //   711	716	729	java/io/IOException
    //   93	98	739	java/io/IOException
    //   261	299	749	finally
    //   299	304	749	finally
    //   565	575	749	finally
    //   608	636	749	finally
    //   676	681	749	finally
    //   261	299	758	java/lang/Exception
    //   299	304	771	java/lang/Exception
    //   565	575	771	java/lang/Exception
    //   608	636	771	java/lang/Exception
    //   79	88	784	java/lang/Exception
    //   122	182	784	java/lang/Exception
    //   228	257	784	java/lang/Exception
    //   331	516	784	java/lang/Exception
    //   261	299	801	com/tencent/tmsecure/exception/NetWorkException
    //   299	304	801	com/tencent/tmsecure/exception/NetWorkException
    //   565	575	801	com/tencent/tmsecure/exception/NetWorkException
    //   608	636	801	com/tencent/tmsecure/exception/NetWorkException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bti
 * JD-Core Version:    0.6.2
 */
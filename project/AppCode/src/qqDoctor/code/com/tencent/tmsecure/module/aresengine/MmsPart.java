package com.tencent.tmsecure.module.aresengine;

import android.os.Parcel;
import com.tencent.tmsecure.common.BaseEntity;
import java.io.UnsupportedEncodingException;

public class MmsPart extends BaseEntity
{
  public int charset;
  public byte[] contentDispositon;
  public byte[] contentId;
  public byte[] contentLocation;
  public byte[] contentType;
  public byte[] data;
  public String dataPath;
  public byte[] fileName;
  public byte[] name;

  public MmsPart()
  {
  }

  // ERROR //
  MmsPart(com.google.android.mms.pdu.PduPart paramPduPart)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 20	com/tencent/tmsecure/common/BaseEntity:<init>	()V
    //   6: aload_0
    //   7: aload_1
    //   8: invokevirtual 29	com/google/android/mms/pdu/PduPart:getContentType	()[B
    //   11: putfield 31	com/tencent/tmsecure/module/aresengine/MmsPart:contentType	[B
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 34	com/google/android/mms/pdu/PduPart:getName	()[B
    //   19: putfield 36	com/tencent/tmsecure/module/aresengine/MmsPart:name	[B
    //   22: aload_0
    //   23: aload_1
    //   24: invokevirtual 40	com/google/android/mms/pdu/PduPart:getCharset	()I
    //   27: putfield 42	com/tencent/tmsecure/module/aresengine/MmsPart:charset	I
    //   30: aload_0
    //   31: aload_1
    //   32: invokevirtual 45	com/google/android/mms/pdu/PduPart:getContentDisposition	()[B
    //   35: putfield 47	com/tencent/tmsecure/module/aresengine/MmsPart:contentDispositon	[B
    //   38: aload_0
    //   39: aload_1
    //   40: invokevirtual 50	com/google/android/mms/pdu/PduPart:getFilename	()[B
    //   43: putfield 52	com/tencent/tmsecure/module/aresengine/MmsPart:fileName	[B
    //   46: aload_0
    //   47: aload_1
    //   48: invokevirtual 55	com/google/android/mms/pdu/PduPart:getContentId	()[B
    //   51: putfield 57	com/tencent/tmsecure/module/aresengine/MmsPart:contentId	[B
    //   54: aload_0
    //   55: aload_1
    //   56: invokevirtual 60	com/google/android/mms/pdu/PduPart:getContentLocation	()[B
    //   59: putfield 62	com/tencent/tmsecure/module/aresengine/MmsPart:contentLocation	[B
    //   62: aload_1
    //   63: invokevirtual 66	com/google/android/mms/pdu/PduPart:getDataUri	()Landroid/net/Uri;
    //   66: astore_3
    //   67: aload_0
    //   68: aload_1
    //   69: invokevirtual 69	com/google/android/mms/pdu/PduPart:getData	()[B
    //   72: putfield 71	com/tencent/tmsecure/module/aresengine/MmsPart:data	[B
    //   75: aload_0
    //   76: getfield 31	com/tencent/tmsecure/module/aresengine/MmsPart:contentType	[B
    //   79: ifnonnull +4 -> 83
    //   82: return
    //   83: aload_0
    //   84: getfield 31	com/tencent/tmsecure/module/aresengine/MmsPart:contentType	[B
    //   87: invokestatic 75	com/tencent/tmsecure/module/aresengine/MmsPart:a	([B)Ljava/lang/String;
    //   90: astore 4
    //   92: aload 4
    //   94: invokestatic 81	com/google/android/mms/ContentType:isImageType	(Ljava/lang/String;)Z
    //   97: ifne +19 -> 116
    //   100: aload 4
    //   102: invokestatic 84	com/google/android/mms/ContentType:isAudioType	(Ljava/lang/String;)Z
    //   105: ifne +11 -> 116
    //   108: aload 4
    //   110: invokestatic 87	com/google/android/mms/ContentType:isVideoType	(Ljava/lang/String;)Z
    //   113: ifeq -31 -> 82
    //   116: new 89	java/lang/StringBuilder
    //   119: dup
    //   120: invokestatic 95	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   123: invokevirtual 101	android/content/Context:getFilesDir	()Ljava/io/File;
    //   126: invokevirtual 106	java/io/File:getParentFile	()Ljava/io/File;
    //   129: invokevirtual 110	java/io/File:toString	()Ljava/lang/String;
    //   132: invokestatic 116	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   135: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   138: getstatic 122	java/io/File:separator	Ljava/lang/String;
    //   141: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: ldc 128
    //   146: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: astore 5
    //   154: new 103	java/io/File
    //   157: dup
    //   158: aload 5
    //   160: invokespecial 130	java/io/File:<init>	(Ljava/lang/String;)V
    //   163: astore 6
    //   165: aload 6
    //   167: invokevirtual 134	java/io/File:exists	()Z
    //   170: ifeq +11 -> 181
    //   173: aload 6
    //   175: invokevirtual 137	java/io/File:isDirectory	()Z
    //   178: ifne +9 -> 187
    //   181: aload 6
    //   183: invokevirtual 140	java/io/File:mkdirs	()Z
    //   186: pop
    //   187: new 89	java/lang/StringBuilder
    //   190: dup
    //   191: aload 5
    //   193: invokestatic 116	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   196: invokespecial 119	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   199: getstatic 122	java/io/File:separator	Ljava/lang/String;
    //   202: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   205: invokestatic 146	java/lang/System:currentTimeMillis	()J
    //   208: invokevirtual 149	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   211: ldc 151
    //   213: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: aload_0
    //   217: getfield 62	com/tencent/tmsecure/module/aresengine/MmsPart:contentLocation	[B
    //   220: invokestatic 75	com/tencent/tmsecure/module/aresengine/MmsPart:a	([B)Ljava/lang/String;
    //   223: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   229: astore 8
    //   231: new 153	java/io/BufferedOutputStream
    //   234: dup
    //   235: new 155	java/io/FileOutputStream
    //   238: dup
    //   239: new 103	java/io/File
    //   242: dup
    //   243: aload 8
    //   245: invokespecial 130	java/io/File:<init>	(Ljava/lang/String;)V
    //   248: invokespecial 158	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   251: invokespecial 161	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   254: astore 9
    //   256: aload_0
    //   257: getfield 71	com/tencent/tmsecure/module/aresengine/MmsPart:data	[B
    //   260: ifnull +54 -> 314
    //   263: aload 9
    //   265: aload_0
    //   266: getfield 71	com/tencent/tmsecure/module/aresengine/MmsPart:data	[B
    //   269: invokevirtual 165	java/io/BufferedOutputStream:write	([B)V
    //   272: aload 9
    //   274: invokevirtual 168	java/io/BufferedOutputStream:flush	()V
    //   277: aload_0
    //   278: aload 8
    //   280: putfield 170	com/tencent/tmsecure/module/aresengine/MmsPart:dataPath	Ljava/lang/String;
    //   283: aload_0
    //   284: aconst_null
    //   285: putfield 71	com/tencent/tmsecure/module/aresengine/MmsPart:data	[B
    //   288: aload_2
    //   289: ifnull +7 -> 296
    //   292: aload_2
    //   293: invokevirtual 175	java/io/BufferedInputStream:close	()V
    //   296: aload 9
    //   298: invokevirtual 176	java/io/BufferedOutputStream:close	()V
    //   301: goto -219 -> 82
    //   304: astore 20
    //   306: aload 20
    //   308: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   311: goto -229 -> 82
    //   314: aconst_null
    //   315: astore_2
    //   316: aload_3
    //   317: ifnull -29 -> 288
    //   320: new 172	java/io/BufferedInputStream
    //   323: dup
    //   324: invokestatic 95	com/tencent/tmsecure/common/TMSApplication:getApplicaionContext	()Landroid/content/Context;
    //   327: invokevirtual 183	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   330: aload_3
    //   331: invokevirtual 189	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   334: invokespecial 192	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   337: astore 17
    //   339: sipush 1024
    //   342: newarray byte
    //   344: astore 18
    //   346: aload 17
    //   348: aload 18
    //   350: invokevirtual 196	java/io/BufferedInputStream:read	([B)I
    //   353: istore 19
    //   355: iload 19
    //   357: iconst_m1
    //   358: if_icmpne +20 -> 378
    //   361: aload 9
    //   363: invokevirtual 168	java/io/BufferedOutputStream:flush	()V
    //   366: aload_0
    //   367: aload 8
    //   369: putfield 170	com/tencent/tmsecure/module/aresengine/MmsPart:dataPath	Ljava/lang/String;
    //   372: aload 17
    //   374: astore_2
    //   375: goto -87 -> 288
    //   378: aload 9
    //   380: aload 18
    //   382: iconst_0
    //   383: iload 19
    //   385: invokevirtual 199	java/io/BufferedOutputStream:write	([BII)V
    //   388: goto -42 -> 346
    //   391: astore 10
    //   393: aload 17
    //   395: astore_2
    //   396: aload 9
    //   398: astore 11
    //   400: aload 10
    //   402: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   405: aload_2
    //   406: ifnull +7 -> 413
    //   409: aload_2
    //   410: invokevirtual 175	java/io/BufferedInputStream:close	()V
    //   413: aload 11
    //   415: ifnull -333 -> 82
    //   418: aload 11
    //   420: invokevirtual 176	java/io/BufferedOutputStream:close	()V
    //   423: goto -341 -> 82
    //   426: astore 15
    //   428: aload 15
    //   430: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   433: goto -351 -> 82
    //   436: astore 16
    //   438: aload 16
    //   440: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   443: goto -30 -> 413
    //   446: astore 12
    //   448: aconst_null
    //   449: astore 9
    //   451: aload_2
    //   452: ifnull +7 -> 459
    //   455: aload_2
    //   456: invokevirtual 175	java/io/BufferedInputStream:close	()V
    //   459: aload 9
    //   461: ifnull +8 -> 469
    //   464: aload 9
    //   466: invokevirtual 176	java/io/BufferedOutputStream:close	()V
    //   469: aload 12
    //   471: athrow
    //   472: astore 14
    //   474: aload 14
    //   476: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   479: goto -20 -> 459
    //   482: astore 13
    //   484: aload 13
    //   486: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   489: goto -20 -> 469
    //   492: astore 21
    //   494: aload 21
    //   496: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   499: goto -203 -> 296
    //   502: astore 12
    //   504: aconst_null
    //   505: astore_2
    //   506: goto -55 -> 451
    //   509: astore 12
    //   511: aload 17
    //   513: astore_2
    //   514: goto -63 -> 451
    //   517: astore 12
    //   519: aload 11
    //   521: astore 9
    //   523: goto -72 -> 451
    //   526: astore 10
    //   528: aconst_null
    //   529: astore_2
    //   530: aconst_null
    //   531: astore 11
    //   533: goto -133 -> 400
    //   536: astore 10
    //   538: aload 9
    //   540: astore 11
    //   542: aconst_null
    //   543: astore_2
    //   544: goto -144 -> 400
    //
    // Exception table:
    //   from	to	target	type
    //   296	301	304	java/io/IOException
    //   339	388	391	java/io/IOException
    //   418	423	426	java/io/IOException
    //   409	413	436	java/io/IOException
    //   231	256	446	finally
    //   455	459	472	java/io/IOException
    //   464	469	482	java/io/IOException
    //   292	296	492	java/io/IOException
    //   256	288	502	finally
    //   320	339	502	finally
    //   339	388	509	finally
    //   400	405	517	finally
    //   231	256	526	java/io/IOException
    //   256	288	536	java/io/IOException
    //   320	339	536	java/io/IOException
  }

  private static String a(byte[] paramArrayOfByte)
  {
    Object localObject1 = "";
    if (paramArrayOfByte == null);
    while (true)
    {
      return localObject1;
      try
      {
        localObject2 = new String(paramArrayOfByte, "iso-8859-1");
        localObject1 = localObject2;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        while (true)
          Object localObject2 = localObject1;
      }
    }
  }

  // ERROR //
  final com.google.android.mms.pdu.PduPart a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 25	com/google/android/mms/pdu/PduPart
    //   5: dup
    //   6: invokespecial 212	com/google/android/mms/pdu/PduPart:<init>	()V
    //   9: astore_2
    //   10: aload_2
    //   11: aload_0
    //   12: getfield 42	com/tencent/tmsecure/module/aresengine/MmsPart:charset	I
    //   15: invokevirtual 216	com/google/android/mms/pdu/PduPart:setCharset	(I)V
    //   18: aload_0
    //   19: getfield 47	com/tencent/tmsecure/module/aresengine/MmsPart:contentDispositon	[B
    //   22: ifnull +11 -> 33
    //   25: aload_2
    //   26: aload_0
    //   27: getfield 47	com/tencent/tmsecure/module/aresengine/MmsPart:contentDispositon	[B
    //   30: invokevirtual 219	com/google/android/mms/pdu/PduPart:setContentDisposition	([B)V
    //   33: aload_0
    //   34: getfield 57	com/tencent/tmsecure/module/aresengine/MmsPart:contentId	[B
    //   37: ifnull +11 -> 48
    //   40: aload_2
    //   41: aload_0
    //   42: getfield 57	com/tencent/tmsecure/module/aresengine/MmsPart:contentId	[B
    //   45: invokevirtual 222	com/google/android/mms/pdu/PduPart:setContentId	([B)V
    //   48: aload_0
    //   49: getfield 62	com/tencent/tmsecure/module/aresengine/MmsPart:contentLocation	[B
    //   52: ifnull +11 -> 63
    //   55: aload_2
    //   56: aload_0
    //   57: getfield 62	com/tencent/tmsecure/module/aresengine/MmsPart:contentLocation	[B
    //   60: invokevirtual 225	com/google/android/mms/pdu/PduPart:setContentLocation	([B)V
    //   63: aload_0
    //   64: getfield 31	com/tencent/tmsecure/module/aresengine/MmsPart:contentType	[B
    //   67: ifnull +11 -> 78
    //   70: aload_2
    //   71: aload_0
    //   72: getfield 31	com/tencent/tmsecure/module/aresengine/MmsPart:contentType	[B
    //   75: invokevirtual 228	com/google/android/mms/pdu/PduPart:setContentType	([B)V
    //   78: aload_0
    //   79: getfield 52	com/tencent/tmsecure/module/aresengine/MmsPart:fileName	[B
    //   82: ifnull +11 -> 93
    //   85: aload_2
    //   86: aload_0
    //   87: getfield 52	com/tencent/tmsecure/module/aresengine/MmsPart:fileName	[B
    //   90: invokevirtual 231	com/google/android/mms/pdu/PduPart:setFilename	([B)V
    //   93: aload_0
    //   94: getfield 36	com/tencent/tmsecure/module/aresengine/MmsPart:name	[B
    //   97: ifnull +11 -> 108
    //   100: aload_2
    //   101: aload_0
    //   102: getfield 36	com/tencent/tmsecure/module/aresengine/MmsPart:name	[B
    //   105: invokevirtual 234	com/google/android/mms/pdu/PduPart:setName	([B)V
    //   108: aload_0
    //   109: getfield 71	com/tencent/tmsecure/module/aresengine/MmsPart:data	[B
    //   112: ifnull +13 -> 125
    //   115: aload_2
    //   116: aload_0
    //   117: getfield 71	com/tencent/tmsecure/module/aresengine/MmsPart:data	[B
    //   120: invokevirtual 237	com/google/android/mms/pdu/PduPart:setData	([B)V
    //   123: aload_2
    //   124: areturn
    //   125: aload_0
    //   126: getfield 170	com/tencent/tmsecure/module/aresengine/MmsPart:dataPath	Ljava/lang/String;
    //   129: ifnull -6 -> 123
    //   132: new 103	java/io/File
    //   135: dup
    //   136: aload_0
    //   137: getfield 170	com/tencent/tmsecure/module/aresengine/MmsPart:dataPath	Ljava/lang/String;
    //   140: invokespecial 130	java/io/File:<init>	(Ljava/lang/String;)V
    //   143: astore_3
    //   144: aload_3
    //   145: invokevirtual 134	java/io/File:exists	()Z
    //   148: ifeq -25 -> 123
    //   151: new 172	java/io/BufferedInputStream
    //   154: dup
    //   155: new 239	java/io/FileInputStream
    //   158: dup
    //   159: aload_3
    //   160: invokespecial 240	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   163: invokespecial 192	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   166: astore 4
    //   168: new 242	java/io/ByteArrayOutputStream
    //   171: dup
    //   172: invokespecial 243	java/io/ByteArrayOutputStream:<init>	()V
    //   175: astore 5
    //   177: sipush 1024
    //   180: newarray byte
    //   182: astore 12
    //   184: aload 4
    //   186: aload 12
    //   188: invokevirtual 196	java/io/BufferedInputStream:read	([B)I
    //   191: istore 13
    //   193: iload 13
    //   195: iconst_m1
    //   196: if_icmpne +40 -> 236
    //   199: aload 5
    //   201: invokevirtual 244	java/io/ByteArrayOutputStream:flush	()V
    //   204: aload_2
    //   205: aload 5
    //   207: invokevirtual 247	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   210: invokevirtual 237	com/google/android/mms/pdu/PduPart:setData	([B)V
    //   213: aload 5
    //   215: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   218: aload 4
    //   220: invokevirtual 175	java/io/BufferedInputStream:close	()V
    //   223: goto -100 -> 123
    //   226: astore 15
    //   228: aload 15
    //   230: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   233: goto -110 -> 123
    //   236: aload 5
    //   238: aload 12
    //   240: iconst_0
    //   241: iload 13
    //   243: invokevirtual 249	java/io/ByteArrayOutputStream:write	([BII)V
    //   246: goto -62 -> 184
    //   249: astore 9
    //   251: aload 5
    //   253: astore_1
    //   254: aload 9
    //   256: invokevirtual 250	java/lang/Exception:printStackTrace	()V
    //   259: aload_1
    //   260: ifnull +7 -> 267
    //   263: aload_1
    //   264: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   267: aload 4
    //   269: ifnull -146 -> 123
    //   272: aload 4
    //   274: invokevirtual 175	java/io/BufferedInputStream:close	()V
    //   277: goto -154 -> 123
    //   280: astore 10
    //   282: aload 10
    //   284: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   287: goto -164 -> 123
    //   290: astore 11
    //   292: aload 11
    //   294: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   297: goto -30 -> 267
    //   300: astore 6
    //   302: aconst_null
    //   303: astore 4
    //   305: aload_1
    //   306: ifnull +7 -> 313
    //   309: aload_1
    //   310: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   313: aload 4
    //   315: ifnull +8 -> 323
    //   318: aload 4
    //   320: invokevirtual 175	java/io/BufferedInputStream:close	()V
    //   323: aload 6
    //   325: athrow
    //   326: astore 8
    //   328: aload 8
    //   330: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   333: goto -20 -> 313
    //   336: astore 7
    //   338: aload 7
    //   340: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   343: goto -20 -> 323
    //   346: astore 14
    //   348: aload 14
    //   350: invokevirtual 179	java/io/IOException:printStackTrace	()V
    //   353: goto -135 -> 218
    //   356: astore 6
    //   358: goto -53 -> 305
    //   361: astore 6
    //   363: aload 5
    //   365: astore_1
    //   366: goto -61 -> 305
    //   369: astore 9
    //   371: aconst_null
    //   372: astore 4
    //   374: aconst_null
    //   375: astore_1
    //   376: goto -122 -> 254
    //   379: astore 9
    //   381: aconst_null
    //   382: astore_1
    //   383: goto -129 -> 254
    //
    // Exception table:
    //   from	to	target	type
    //   218	223	226	java/io/IOException
    //   177	213	249	java/lang/Exception
    //   236	246	249	java/lang/Exception
    //   272	277	280	java/io/IOException
    //   263	267	290	java/io/IOException
    //   151	168	300	finally
    //   309	313	326	java/io/IOException
    //   318	323	336	java/io/IOException
    //   213	218	346	java/io/IOException
    //   168	177	356	finally
    //   254	259	356	finally
    //   177	213	361	finally
    //   236	246	361	finally
    //   151	168	369	java/lang/Exception
    //   168	177	379	java/lang/Exception
  }

  public void writeToParcel(Parcel paramParcel)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.MmsPart
 * JD-Core Version:    0.6.2
 */
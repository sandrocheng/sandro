package com.tencent.lbsapi.core;

import LBSAPIProtocol.Cell;
import LBSAPIProtocol.DeviceData;
import LBSAPIProtocol.GPS;
import LBSAPIProtocol.LBSKeyData;
import LBSAPIProtocol.Measure;
import LBSAPIProtocol.ReqGetPoiList;
import LBSAPIProtocol.ReqGetPosition;
import LBSAPIProtocol.ReqHeader;
import LBSAPIProtocol.ReqSearchNearPoiList;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.qq.jce.wup.UniPacket;
import com.qq.taf.jce.JceOutputStream;
import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.a.a;
import com.tencent.lbsapi.model.QLBSGPSInfo;
import java.util.ArrayList;
import java.util.Iterator;

public class i
{
  private static final int i = 0;
  private static final int j = 1;
  private static final int k = 2;
  private static final int l = 3;
  private QLBSEngine a = null;
  private a b = null;
  private QLBSNotification c = null;
  private String d = null;
  private String e = null;
  private String f = null;
  private Context g = null;
  private Handler h = null;

  public i(Context paramContext, QLBSNotification paramQLBSNotification, String paramString1, String paramString2, String paramString3)
  {
    this.a = new QLBSEngine(paramContext, paramQLBSNotification);
    this.b = new a(new j(this));
    this.g = paramContext;
    this.c = paramQLBSNotification;
    if (paramString1 == null)
      paramString1 = "";
    this.d = paramString1;
    if (paramString2 == null)
      paramString2 = "";
    this.e = paramString2;
    if (paramString3 == null)
      paramString3 = "";
    this.f = paramString3;
    this.h = new k(this, paramQLBSNotification);
  }

  private void a(int paramInt1, int paramInt2, String paramString)
  {
    if (this.c != null)
      b(paramInt1, paramInt2, paramString);
  }

  // ERROR //
  private void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 38	com/tencent/lbsapi/core/i:c	Lcom/tencent/lbsapi/QLBSNotification;
    //   4: ifnull +588 -> 592
    //   7: new 78	com/qq/jce/wup/UniPacket
    //   10: dup
    //   11: invokespecial 79	com/qq/jce/wup/UniPacket:<init>	()V
    //   14: astore 5
    //   16: aload 5
    //   18: ldc 81
    //   20: invokevirtual 85	com/qq/jce/wup/UniPacket:setEncodeName	(Ljava/lang/String;)V
    //   23: aload_2
    //   24: aload_0
    //   25: getfield 40	com/tencent/lbsapi/core/i:d	Ljava/lang/String;
    //   28: aload_0
    //   29: getfield 42	com/tencent/lbsapi/core/i:e	Ljava/lang/String;
    //   32: invokestatic 90	com/tencent/lbsapi/core/b:b	([BLjava/lang/String;Ljava/lang/String;)[B
    //   35: astore 7
    //   37: aload 7
    //   39: ifnonnull +15 -> 54
    //   42: aload_0
    //   43: iload_1
    //   44: bipush 254
    //   46: ldc 92
    //   48: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   51: goto +541 -> 592
    //   54: aload 5
    //   56: aload 7
    //   58: invokevirtual 96	com/qq/jce/wup/UniPacket:decode	([B)V
    //   61: aload 5
    //   63: ldc 98
    //   65: invokevirtual 102	com/qq/jce/wup/UniPacket:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   68: checkcast 104	LBSAPIProtocol/RspHeader
    //   71: astore 8
    //   73: aload 8
    //   75: ifnull +133 -> 208
    //   78: aload 8
    //   80: invokevirtual 108	LBSAPIProtocol/RspHeader:getEResult	()I
    //   83: ifeq +137 -> 220
    //   86: aload 8
    //   88: invokevirtual 108	LBSAPIProtocol/RspHeader:getEResult	()I
    //   91: lookupswitch	default:+33->124, 102:+81->172, 201:+93->184, 202:+105->196
    //   125: iload_1
    //   126: bipush 253
    //   128: ldc 110
    //   130: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   133: goto +459 -> 592
    //   136: astore 4
    //   138: aload 4
    //   140: invokevirtual 113	java/lang/Exception:printStackTrace	()V
    //   143: aload_0
    //   144: iload_1
    //   145: bipush 249
    //   147: aload 4
    //   149: invokevirtual 117	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   152: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   155: goto +437 -> 592
    //   158: astore 6
    //   160: aload_0
    //   161: iload_1
    //   162: bipush 254
    //   164: ldc 92
    //   166: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   169: goto +423 -> 592
    //   172: aload_0
    //   173: iload_1
    //   174: bipush 252
    //   176: ldc 119
    //   178: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   181: goto +411 -> 592
    //   184: aload_0
    //   185: iload_1
    //   186: bipush 251
    //   188: ldc 121
    //   190: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   193: goto +399 -> 592
    //   196: aload_0
    //   197: iload_1
    //   198: bipush 250
    //   200: ldc 123
    //   202: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   205: goto +387 -> 592
    //   208: aload_0
    //   209: iload_1
    //   210: bipush 254
    //   212: ldc 92
    //   214: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   217: goto +375 -> 592
    //   220: aload 5
    //   222: invokevirtual 126	com/qq/jce/wup/UniPacket:getFuncName	()Ljava/lang/String;
    //   225: ldc 128
    //   227: invokevirtual 134	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   230: ifeq +111 -> 341
    //   233: aload 5
    //   235: ldc 136
    //   237: invokevirtual 102	com/qq/jce/wup/UniPacket:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   240: checkcast 138	LBSAPIProtocol/RspGetPosition
    //   243: astore 17
    //   245: new 140	android/os/Message
    //   248: dup
    //   249: invokespecial 141	android/os/Message:<init>	()V
    //   252: astore 18
    //   254: new 143	android/os/Bundle
    //   257: dup
    //   258: invokespecial 144	android/os/Bundle:<init>	()V
    //   261: astore 19
    //   263: aload 18
    //   265: aload 19
    //   267: invokevirtual 148	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   270: aload 19
    //   272: ldc 150
    //   274: iload_1
    //   275: invokevirtual 154	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   278: aload 17
    //   280: ifnull +34 -> 314
    //   283: aload 18
    //   285: iconst_1
    //   286: putfield 157	android/os/Message:what	I
    //   289: aload 19
    //   291: ldc 136
    //   293: aload 17
    //   295: invokevirtual 161	LBSAPIProtocol/RspGetPosition:toByteArray	()[B
    //   298: invokevirtual 165	android/os/Bundle:putByteArray	(Ljava/lang/String;[B)V
    //   301: aload_0
    //   302: getfield 48	com/tencent/lbsapi/core/i:h	Landroid/os/Handler;
    //   305: aload 18
    //   307: invokevirtual 171	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   310: pop
    //   311: goto +281 -> 592
    //   314: aload 18
    //   316: iconst_0
    //   317: putfield 157	android/os/Message:what	I
    //   320: aload 19
    //   322: ldc 173
    //   324: ldc 92
    //   326: invokevirtual 177	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   329: aload 19
    //   331: ldc 179
    //   333: bipush 254
    //   335: invokevirtual 154	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   338: goto -37 -> 301
    //   341: aload 5
    //   343: invokevirtual 126	com/qq/jce/wup/UniPacket:getFuncName	()Ljava/lang/String;
    //   346: ldc 181
    //   348: invokevirtual 134	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   351: ifeq +111 -> 462
    //   354: aload 5
    //   356: ldc 183
    //   358: invokevirtual 102	com/qq/jce/wup/UniPacket:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   361: checkcast 185	LBSAPIProtocol/RspGetPoiList
    //   364: astore 13
    //   366: new 140	android/os/Message
    //   369: dup
    //   370: invokespecial 141	android/os/Message:<init>	()V
    //   373: astore 14
    //   375: new 143	android/os/Bundle
    //   378: dup
    //   379: invokespecial 144	android/os/Bundle:<init>	()V
    //   382: astore 15
    //   384: aload 14
    //   386: aload 15
    //   388: invokevirtual 148	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   391: aload 15
    //   393: ldc 150
    //   395: iload_1
    //   396: invokevirtual 154	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   399: aload 13
    //   401: ifnull +34 -> 435
    //   404: aload 14
    //   406: iconst_2
    //   407: putfield 157	android/os/Message:what	I
    //   410: aload 15
    //   412: ldc 183
    //   414: aload 13
    //   416: invokevirtual 186	LBSAPIProtocol/RspGetPoiList:toByteArray	()[B
    //   419: invokevirtual 165	android/os/Bundle:putByteArray	(Ljava/lang/String;[B)V
    //   422: aload_0
    //   423: getfield 48	com/tencent/lbsapi/core/i:h	Landroid/os/Handler;
    //   426: aload 14
    //   428: invokevirtual 171	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   431: pop
    //   432: goto +160 -> 592
    //   435: aload 14
    //   437: iconst_0
    //   438: putfield 157	android/os/Message:what	I
    //   441: aload 15
    //   443: ldc 173
    //   445: ldc 92
    //   447: invokevirtual 177	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   450: aload 15
    //   452: ldc 179
    //   454: bipush 254
    //   456: invokevirtual 154	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   459: goto -37 -> 422
    //   462: aload 5
    //   464: invokevirtual 126	com/qq/jce/wup/UniPacket:getFuncName	()Ljava/lang/String;
    //   467: ldc 188
    //   469: invokevirtual 134	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   472: ifeq +111 -> 583
    //   475: aload 5
    //   477: ldc 190
    //   479: invokevirtual 102	com/qq/jce/wup/UniPacket:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   482: checkcast 192	LBSAPIProtocol/RspSearchNearPoiList
    //   485: astore 9
    //   487: new 140	android/os/Message
    //   490: dup
    //   491: invokespecial 141	android/os/Message:<init>	()V
    //   494: astore 10
    //   496: new 143	android/os/Bundle
    //   499: dup
    //   500: invokespecial 144	android/os/Bundle:<init>	()V
    //   503: astore 11
    //   505: aload 10
    //   507: aload 11
    //   509: invokevirtual 148	android/os/Message:setData	(Landroid/os/Bundle;)V
    //   512: aload 11
    //   514: ldc 150
    //   516: iload_1
    //   517: invokevirtual 154	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   520: aload 9
    //   522: ifnull +34 -> 556
    //   525: aload 10
    //   527: iconst_3
    //   528: putfield 157	android/os/Message:what	I
    //   531: aload 11
    //   533: ldc 190
    //   535: aload 9
    //   537: invokevirtual 193	LBSAPIProtocol/RspSearchNearPoiList:toByteArray	()[B
    //   540: invokevirtual 165	android/os/Bundle:putByteArray	(Ljava/lang/String;[B)V
    //   543: aload_0
    //   544: getfield 48	com/tencent/lbsapi/core/i:h	Landroid/os/Handler;
    //   547: aload 10
    //   549: invokevirtual 171	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   552: pop
    //   553: goto +39 -> 592
    //   556: aload 10
    //   558: iconst_0
    //   559: putfield 157	android/os/Message:what	I
    //   562: aload 11
    //   564: ldc 173
    //   566: ldc 92
    //   568: invokevirtual 177	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   571: aload 11
    //   573: ldc 179
    //   575: bipush 254
    //   577: invokevirtual 154	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   580: goto -37 -> 543
    //   583: aload_0
    //   584: iload_1
    //   585: bipush 254
    //   587: ldc 92
    //   589: invokespecial 73	com/tencent/lbsapi/core/i:b	(IILjava/lang/String;)V
    //   592: return
    //
    // Exception table:
    //   from	to	target	type
    //   0	23	136	java/lang/Exception
    //   61	133	136	java/lang/Exception
    //   160	592	136	java/lang/Exception
    //   23	61	158	java/lang/Exception
  }

  // ERROR //
  public static byte[] a(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 202	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 203	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_1
    //   8: new 205	java/io/DataOutputStream
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 208	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_2
    //   18: ldc 209
    //   20: invokevirtual 213	java/io/DataOutputStream:writeShort	(I)V
    //   23: aload_2
    //   24: iconst_1
    //   25: invokevirtual 213	java/io/DataOutputStream:writeShort	(I)V
    //   28: aload_2
    //   29: aload_0
    //   30: invokevirtual 216	java/io/DataOutputStream:write	([B)V
    //   33: aload_1
    //   34: invokevirtual 217	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   37: astore 8
    //   39: aload 8
    //   41: astore 7
    //   43: aload_1
    //   44: invokevirtual 220	java/io/ByteArrayOutputStream:close	()V
    //   47: aload_2
    //   48: invokevirtual 221	java/io/DataOutputStream:close	()V
    //   51: aload 7
    //   53: areturn
    //   54: astore 5
    //   56: aload 5
    //   58: invokevirtual 113	java/lang/Exception:printStackTrace	()V
    //   61: aload_1
    //   62: invokevirtual 220	java/io/ByteArrayOutputStream:close	()V
    //   65: aload_2
    //   66: invokevirtual 221	java/io/DataOutputStream:close	()V
    //   69: aconst_null
    //   70: astore 7
    //   72: goto -21 -> 51
    //   75: astore 6
    //   77: aconst_null
    //   78: astore 7
    //   80: goto -29 -> 51
    //   83: astore_3
    //   84: aload_1
    //   85: invokevirtual 220	java/io/ByteArrayOutputStream:close	()V
    //   88: aload_2
    //   89: invokevirtual 221	java/io/DataOutputStream:close	()V
    //   92: aload_3
    //   93: athrow
    //   94: astore 4
    //   96: goto -4 -> 92
    //   99: astore 9
    //   101: goto -50 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   17	39	54	java/lang/Exception
    //   61	69	75	java/lang/Exception
    //   17	39	83	finally
    //   56	61	83	finally
    //   84	92	94	java/lang/Exception
    //   43	51	99	java/lang/Exception
  }

  private void b(int paramInt1, int paramInt2, String paramString)
  {
    Message localMessage = new Message();
    Bundle localBundle = new Bundle();
    localMessage.what = 0;
    localMessage.setData(localBundle);
    localBundle.putInt("requestId", paramInt1);
    localBundle.putInt("ErrorCode", paramInt2);
    localBundle.putString("ErrorInfo", paramString);
    if (this.h != null)
      this.h.sendMessage(localMessage);
  }

  public void a()
  {
    this.g = null;
    if (this.a != null)
    {
      this.a.f();
      this.a = null;
    }
    if (this.b != null)
    {
      this.b.b();
      this.b = null;
    }
    if (this.h != null)
      this.h = null;
  }

  public void a(int paramInt)
  {
    this.a.a(paramInt);
  }

  public void a(boolean paramBoolean)
  {
    this.a.a(paramBoolean);
  }

  public boolean a(int paramInt1, int paramInt2, int paramInt3, String paramString, int paramInt4)
  {
    boolean bool;
    if (paramInt2 == 900000000)
    {
      bool = false;
      if (paramInt2 != 900000000);
    }
    while (true)
    {
      return bool;
      ReqHeader localReqHeader = new ReqHeader();
      localReqHeader.setStrUin(paramString);
      localReqHeader.setEUinType(paramInt4);
      localReqHeader.setStrAuthName(this.d);
      localReqHeader.setStrAuthPassword(this.e);
      localReqHeader.setEDeviceType(1);
      ReqGetPosition localReqGetPosition = new ReqGetPosition();
      localReqGetPosition.setStGps(new GPS(paramInt3, paramInt2, -1, 3));
      localReqGetPosition.setStrAppUA(this.f);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      localUniPacket.setRequestId(paramInt1);
      localUniPacket.setServantName("LBS.AddressServer.AddressServantObj");
      localUniPacket.setFuncName("ReqGetPosition");
      localUniPacket.put("ReqHeader", localReqHeader);
      localUniPacket.put("ReqGetPosition", localReqGetPosition);
      byte[] arrayOfByte = b.a(localUniPacket.encode(), this.d, this.e);
      bool = false;
      if (arrayOfByte != null)
        bool = this.b.a(this.g, paramInt1, this.d, arrayOfByte);
    }
  }

  public boolean a(int paramInt1, int paramInt2, int paramInt3, String paramString, int paramInt4, int paramInt5, int paramInt6, int paramInt7, ArrayList paramArrayList, int paramInt8)
  {
    boolean bool;
    if ((paramInt2 == 900000000) && (paramInt2 == 900000000))
      bool = false;
    while (true)
    {
      return bool;
      ReqHeader localReqHeader = new ReqHeader();
      localReqHeader.setStrUin(paramString);
      localReqHeader.setEUinType(paramInt4);
      localReqHeader.setStrAuthName(this.d);
      localReqHeader.setStrAuthPassword(this.e);
      ReqGetPoiList localReqGetPoiList = new ReqGetPoiList();
      localReqGetPoiList.setStGps(new GPS(paramInt3, paramInt2, -1, 3));
      localReqGetPoiList.setVTypes(new ArrayList());
      if ((paramArrayList != null) && (paramArrayList.size() > 0))
        localReqGetPoiList.getVTypes().addAll(paramArrayList);
      localReqGetPoiList.setIRadius(paramInt5);
      localReqGetPoiList.setIBeginPos(paramInt6);
      localReqGetPoiList.setIReqNum(paramInt7);
      localReqGetPoiList.setESortMethod(paramInt8);
      localReqGetPoiList.setStrAppUA(this.f);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      localUniPacket.setRequestId(paramInt1);
      localUniPacket.setServantName("LBS.AddressServer.AddressServantObj");
      localUniPacket.setFuncName("ReqGetPoiList");
      localUniPacket.put("ReqHeader", localReqHeader);
      localUniPacket.put("ReqGetPoiList", localReqGetPoiList);
      byte[] arrayOfByte = b.a(localUniPacket.encode(), this.d, this.e);
      if (arrayOfByte != null)
        bool = this.b.a(this.g, paramInt1, this.d, arrayOfByte);
      else
        bool = false;
    }
  }

  public boolean a(int paramInt1, String paramString, int paramInt2)
  {
    boolean bool;
    if ((this.a.j() == 0) && (this.a.m().size() == 0))
      bool = false;
    while (true)
    {
      return bool;
      ReqHeader localReqHeader = new ReqHeader();
      localReqHeader.setStrUin(paramString);
      localReqHeader.setEUinType(paramInt2);
      localReqHeader.setStrAuthName(this.d);
      localReqHeader.setStrAuthPassword(this.e);
      localReqHeader.setEDeviceType(1);
      ReqGetPosition localReqGetPosition = new ReqGetPosition();
      localReqGetPosition.setVCells(new ArrayList());
      localReqGetPosition.getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), this.a.j()));
      Iterator localIterator = this.a.n().iterator();
      while (localIterator.hasNext())
      {
        int m = ((Integer)localIterator.next()).intValue();
        localReqGetPosition.getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), m));
      }
      localReqGetPosition.setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
      localReqGetPosition.setVMacs(this.a.m());
      ArrayList localArrayList = this.a.t();
      if (localArrayList == null)
        localArrayList = new ArrayList();
      localReqGetPosition.setVMeasures(localArrayList);
      localReqGetPosition.setStrImei(this.a.o());
      localReqGetPosition.setStrAppUA(this.f);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      localUniPacket.setRequestId(paramInt1);
      localUniPacket.setServantName("LBS.AddressServer.AddressServantObj");
      localUniPacket.setFuncName("ReqGetPosition");
      localUniPacket.put("ReqHeader", localReqHeader);
      localUniPacket.put("ReqGetPosition", localReqGetPosition);
      byte[] arrayOfByte = b.a(localUniPacket.encode(), this.d, this.e);
      if (arrayOfByte != null)
        bool = this.b.a(this.g, paramInt1, this.d, arrayOfByte);
      else
        bool = false;
    }
  }

  public boolean a(int paramInt1, String paramString1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString2, ArrayList paramArrayList)
  {
    boolean bool;
    if ((this.a.j() == 0) && (this.a.m().size() == 0))
      bool = false;
    while (true)
    {
      return bool;
      ReqHeader localReqHeader = new ReqHeader();
      localReqHeader.setStrUin(paramString1);
      localReqHeader.setEUinType(paramInt2);
      localReqHeader.setStrAuthName(this.d);
      localReqHeader.setStrAuthPassword(this.e);
      ReqSearchNearPoiList localReqSearchNearPoiList = new ReqSearchNearPoiList();
      localReqSearchNearPoiList.setVCells(new ArrayList());
      localReqSearchNearPoiList.getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), this.a.j()));
      Iterator localIterator = this.a.n().iterator();
      while (localIterator.hasNext())
      {
        int m = ((Integer)localIterator.next()).intValue();
        localReqSearchNearPoiList.getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), m));
      }
      localReqSearchNearPoiList.setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
      localReqSearchNearPoiList.setVMacs(this.a.m());
      localReqSearchNearPoiList.setVTypes(new ArrayList());
      if ((paramArrayList != null) && (paramArrayList.size() > 0))
        localReqSearchNearPoiList.getVTypes().addAll(paramArrayList);
      localReqSearchNearPoiList.setIRadius(paramInt3);
      localReqSearchNearPoiList.setIBeginPos(paramInt4);
      localReqSearchNearPoiList.setIReqNum(paramInt5);
      localReqSearchNearPoiList.setStrKeyword(paramString2);
      localReqSearchNearPoiList.setStrImei(this.a.o());
      localReqSearchNearPoiList.setStrAppUA(this.f);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      localUniPacket.setRequestId(paramInt1);
      localUniPacket.setServantName("LBS.AddressServer.AddressServantObj");
      localUniPacket.setFuncName("ReqSearchNearPoiList");
      localUniPacket.put("ReqHeader", localReqHeader);
      localUniPacket.put("ReqSearchNearPoiList", localReqSearchNearPoiList);
      ArrayList localArrayList = this.a.t();
      if (localArrayList == null)
        localArrayList = new ArrayList();
      localReqSearchNearPoiList.setVMeasures(localArrayList);
      byte[] arrayOfByte = b.a(localUniPacket.encode(), this.d, this.e);
      if (arrayOfByte != null)
        bool = this.b.a(this.g, paramInt1, this.d, arrayOfByte);
      else
        bool = false;
    }
  }

  public boolean a(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5, ArrayList paramArrayList, int paramInt6)
  {
    boolean bool;
    if ((this.a.j() == 0) && (this.a.m().size() == 0))
      bool = false;
    while (true)
    {
      return bool;
      ReqHeader localReqHeader = new ReqHeader();
      localReqHeader.setStrUin(paramString);
      localReqHeader.setEUinType(paramInt2);
      localReqHeader.setStrAuthName(this.d);
      localReqHeader.setStrAuthPassword(this.e);
      ReqGetPoiList localReqGetPoiList = new ReqGetPoiList();
      localReqGetPoiList.setVCells(new ArrayList());
      localReqGetPoiList.getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), this.a.j()));
      Iterator localIterator = this.a.n().iterator();
      while (localIterator.hasNext())
      {
        int m = ((Integer)localIterator.next()).intValue();
        localReqGetPoiList.getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), m));
      }
      localReqGetPoiList.setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
      localReqGetPoiList.setVMacs(this.a.m());
      localReqGetPoiList.setVTypes(new ArrayList());
      if ((paramArrayList != null) && (paramArrayList.size() > 0))
        localReqGetPoiList.getVTypes().addAll(paramArrayList);
      localReqGetPoiList.setIRadius(paramInt3);
      localReqGetPoiList.setIBeginPos(paramInt4);
      localReqGetPoiList.setIReqNum(paramInt5);
      localReqGetPoiList.setESortMethod(paramInt6);
      ArrayList localArrayList = this.a.t();
      if (localArrayList == null)
        localArrayList = new ArrayList();
      localReqGetPoiList.setVMeasures(localArrayList);
      localReqGetPoiList.setStrImei(this.a.o());
      localReqGetPoiList.setStrAppUA(this.f);
      UniPacket localUniPacket = new UniPacket();
      localUniPacket.setEncodeName("utf-8");
      localUniPacket.setRequestId(paramInt1);
      localUniPacket.setServantName("LBS.AddressServer.AddressServantObj");
      localUniPacket.setFuncName("ReqGetPoiList");
      localUniPacket.put("ReqHeader", localReqHeader);
      localUniPacket.put("ReqGetPoiList", localReqGetPoiList);
      byte[] arrayOfByte = b.a(localUniPacket.encode(), this.d, this.e);
      if (arrayOfByte != null)
        bool = this.b.a(this.g, paramInt1, this.d, arrayOfByte);
      else
        bool = false;
    }
  }

  public void b()
  {
    this.a.a();
  }

  public void b(int paramInt)
  {
    this.a.b(paramInt);
  }

  public void c()
  {
    this.a.b();
  }

  public byte[] d()
  {
    Object localObject;
    if ((this.a.j() == 0) && (this.a.k() == 900000000) && (this.a.m().size() == 0))
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        DeviceData localDeviceData = new DeviceData();
        localDeviceData.setStCurMeasure(new Measure());
        localDeviceData.getStCurMeasure().setVCells(new ArrayList());
        localDeviceData.getStCurMeasure().getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), this.a.j()));
        Iterator localIterator = this.a.n().iterator();
        while (localIterator.hasNext())
        {
          int m = ((Integer)localIterator.next()).intValue();
          localDeviceData.getStCurMeasure().getVCells().add(new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), m));
        }
        localDeviceData.getStCurMeasure().setStGps(new GPS(this.a.k(), this.a.l(), -1, 0));
        localDeviceData.getStCurMeasure().setVMacs(this.a.m());
        localDeviceData.getStCurMeasure().setStrExtraInfo(this.a.p());
        ArrayList localArrayList = this.a.t();
        if (localArrayList == null)
          localArrayList = new ArrayList();
        localDeviceData.setVMeasures(localArrayList);
        localDeviceData.setStrImei(this.a.o());
        localDeviceData.setStrAppUA(this.f);
        localDeviceData.setEDeviceType(1);
        JceOutputStream localJceOutputStream1 = new JceOutputStream();
        localDeviceData.writeTo(localJceOutputStream1);
        byte[] arrayOfByte1 = b.a(localJceOutputStream1.toByteArray(), this.d, this.e);
        LBSKeyData localLBSKeyData = new LBSKeyData();
        localLBSKeyData.setVAuthName(this.d.getBytes());
        localLBSKeyData.setVEncryptData(arrayOfByte1);
        JceOutputStream localJceOutputStream2 = new JceOutputStream();
        localLBSKeyData.writeTo(localJceOutputStream2);
        byte[] arrayOfByte2 = a(localJceOutputStream2.toByteArray());
        localObject = arrayOfByte2;
      }
      catch (Exception localException)
      {
        localObject = null;
      }
    }
  }

  public boolean e()
  {
    if (this.a != null);
    for (boolean bool = this.a.c(); ; bool = false)
      return bool;
  }

  public int f()
  {
    if (this.a != null);
    for (int m = this.a.d(); ; m = -1)
      return m;
  }

  public Cell g()
  {
    Cell localCell;
    if (this.a != null)
      if ((this.a.g() == 0) && (this.a.h() == 0) && (this.a.j() == 0))
        localCell = this.a.u();
    while (true)
    {
      return localCell;
      localCell = new Cell((short)this.a.g(), (short)this.a.h(), this.a.i(), this.a.j());
      continue;
      localCell = null;
    }
  }

  public QLBSGPSInfo h()
  {
    if (this.a != null);
    for (QLBSGPSInfo localQLBSGPSInfo = new QLBSGPSInfo(this.a.k(), this.a.l(), -1, 0); ; localQLBSGPSInfo = null)
      return localQLBSGPSInfo;
  }

  public boolean i()
  {
    return this.a.q();
  }

  public float j()
  {
    return this.a.r();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.core.i
 * JD-Core Version:    0.6.2
 */
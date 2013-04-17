package com.tencent.tmsecure.module.qscanner;

import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import android.content.Context;
import com.qq.jce.wup.UniAttribute;
import com.tencent.tmsecure.common.TMSApplication;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import k;

public class AmScanner
{
  private int a = 0;

  static
  {
    String str = TMSApplication.getStrFromEnvMap("virus_scan_libname");
    k.a(TMSApplication.getApplicaionContext(), str);
  }

  public AmScanner(Context paramContext, String paramString)
  {
    this.a = newObject(paramContext, paramString);
    if (this.a == 0)
      throw new OutOfMemoryError();
    initScanner(this.a);
  }

  private static native void deleteObject(int paramInt);

  private static native int initScanner(int paramInt);

  public static VirusClientInfo loadAmfHeader(Context paramContext, String paramString)
  {
    UniAttribute localUniAttribute;
    if (paramString != null)
    {
      localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      localUniAttribute.useVersion3();
      AtomicReference localAtomicReference = new AtomicReference();
      if (nativeLoadAmfHeaderBytes(paramContext, paramString, localAtomicReference) == 0)
      {
        byte[] arrayOfByte = (byte[])localAtomicReference.get();
        if (arrayOfByte != null)
          localUniAttribute.decode(arrayOfByte);
      }
    }
    for (VirusClientInfo localVirusClientInfo = (VirusClientInfo)localUniAttribute.getByClass("vci", new VirusClientInfo()); ; localVirusClientInfo = null)
      return localVirusClientInfo;
  }

  private static native int nativeLoadAmfHeaderBytes(Context paramContext, String paramString, AtomicReference<byte[]> paramAtomicReference);

  private static native int nativeUpdateMalwareInfoBytes(Context paramContext, String paramString, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  private static native int newObject(Context paramContext, String paramString);

  private static native int scanApkBytes(int paramInt, byte[] paramArrayOfByte, AtomicReference<byte[]> paramAtomicReference);

  public static int updateBase(Context paramContext, String paramString, VirusServerInfo paramVirusServerInfo, List<VirusInfo> paramList)
  {
    if ((paramVirusServerInfo == null) || (paramList == null));
    UniAttribute localUniAttribute;
    byte[] arrayOfByte;
    for (int i = -6; ; i = nativeUpdateMalwareInfoBytes(paramContext, paramString, arrayOfByte, localUniAttribute.encode()))
    {
      return i;
      localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      localUniAttribute.useVersion3();
      localUniAttribute.put("vsi", paramVirusServerInfo);
      arrayOfByte = localUniAttribute.encode();
      localUniAttribute.clearCacheData();
      localUniAttribute.put("vil", paramList);
    }
  }

  public void finalize()
  {
    if (this.a != 0)
    {
      deleteObject(this.a);
      this.a = 0;
    }
  }

  public QScanResult scanApk(ApkKey paramApkKey)
  {
    UniAttribute localUniAttribute;
    if (paramApkKey != null)
    {
      localUniAttribute = new UniAttribute();
      localUniAttribute.setEncodeName("UTF-8");
      localUniAttribute.useVersion3();
      localUniAttribute.put("ak", paramApkKey);
      AtomicReference localAtomicReference = new AtomicReference();
      if (scanApkBytes(this.a, localUniAttribute.encode(), localAtomicReference) == 0)
      {
        byte[] arrayOfByte = (byte[])localAtomicReference.get();
        if (arrayOfByte != null)
        {
          localUniAttribute.clearCacheData();
          localUniAttribute.decode(arrayOfByte);
        }
      }
    }
    for (QScanResult localQScanResult = (QScanResult)localUniAttribute.getByClass("qsr", new QScanResult()); ; localQScanResult = null)
      return localQScanResult;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.AmScanner
 * JD-Core Version:    0.6.2
 */
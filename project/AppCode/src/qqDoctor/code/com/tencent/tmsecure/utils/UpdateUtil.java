package com.tencent.tmsecure.utils;

import QQPIM.ConfInfo;
import QQPIM.VirusClientInfo;
import a;
import android.content.Context;
import com.tencent.tccdb.RuleFileHeader;
import com.tencent.tccdb.SmsChecker;
import com.tencent.tmsecure.module.qscanner.AmScanner;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.concurrent.atomic.AtomicReference;

public class UpdateUtil
{
  private static byte[] a(String paramString, int paramInt)
    throws IOException
  {
    byte[] arrayOfByte = new byte[paramInt];
    RandomAccessFile localRandomAccessFile = new RandomAccessFile(paramString, "r");
    localRandomAccessFile.skipBytes(0);
    localRandomAccessFile.read(arrayOfByte);
    localRandomAccessFile.close();
    return arrayOfByte;
  }

  public static ConfInfo getFileConfInfo(String paramString)
  {
    try
    {
      byte[] arrayOfByte1 = a(paramString, 24);
      localConfInfo = new ConfInfo();
      byte[] arrayOfByte2 = new byte[4];
      System.arraycopy(arrayOfByte1, 4, arrayOfByte2, 0, 4);
      localConfInfo.setTimestamp(a.e(arrayOfByte2));
      byte[] arrayOfByte3 = new byte[16];
      System.arraycopy(arrayOfByte1, 8, arrayOfByte3, 0, 16);
      localConfInfo.setChecksum(a.d(arrayOfByte3));
      localConfInfo.setFilename(new File(paramString).getName());
      return localConfInfo;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.getMessage();
        ConfInfo localConfInfo = null;
      }
    }
  }

  public static ConfInfo getLocationConfInfo(String paramString)
  {
    try
    {
      byte[] arrayOfByte1 = a(paramString, 48);
      localConfInfo = new ConfInfo();
      localConfInfo.setVersion(arrayOfByte1[0]);
      byte[] arrayOfByte2 = new byte[4];
      System.arraycopy(arrayOfByte1, 4, arrayOfByte2, 0, 4);
      localConfInfo.setTimestamp(a.e(arrayOfByte2));
      byte[] arrayOfByte3 = new byte[16];
      System.arraycopy(arrayOfByte1, 8, arrayOfByte3, 0, 16);
      localConfInfo.setChecksum(a.d(arrayOfByte3));
      byte[] arrayOfByte4 = new byte[4];
      System.arraycopy(arrayOfByte1, 44, arrayOfByte4, 0, 4);
      localConfInfo.setPfutimestamp(a.e(arrayOfByte4));
      localConfInfo.setFilename(new File(paramString).getName());
      return localConfInfo;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.getMessage();
        ConfInfo localConfInfo = null;
      }
    }
  }

  public static ConfInfo getSmsCheckerConfInfo(Context paramContext, String paramString)
  {
    File localFile = new File(paramString);
    ConfInfo localConfInfo1;
    if (localFile.exists())
    {
      AtomicReference localAtomicReference = new AtomicReference();
      SmsChecker.getRuleFileHeader(paramContext, localAtomicReference, paramString);
      RuleFileHeader localRuleFileHeader = (RuleFileHeader)localAtomicReference.get();
      if (localRuleFileHeader != null)
      {
        localConfInfo1 = new ConfInfo();
        localConfInfo1.setFilename(localFile.getName());
        localConfInfo1.setChecksum(localRuleFileHeader.md5str);
        localConfInfo1.setTimestamp(localRuleFileHeader.time);
      }
    }
    for (ConfInfo localConfInfo2 = localConfInfo1; ; localConfInfo2 = null)
      return localConfInfo2;
  }

  public static VirusClientInfo getVirusClientInfo(Context paramContext, String paramString)
  {
    boolean bool = new File(paramString).exists();
    VirusClientInfo localVirusClientInfo = null;
    if (bool)
      localVirusClientInfo = AmScanner.loadAmfHeader(paramContext, paramString);
    return localVirusClientInfo;
  }

  public static ConfInfo getVirusConfInfo(Context paramContext, String paramString)
  {
    File localFile = new File(paramString);
    boolean bool = localFile.exists();
    ConfInfo localConfInfo = null;
    if (bool)
    {
      VirusClientInfo localVirusClientInfo = AmScanner.loadAmfHeader(paramContext, paramString);
      localConfInfo = null;
      if (localVirusClientInfo != null)
      {
        localConfInfo = new ConfInfo();
        localConfInfo.setFilename(localFile.getName());
        localConfInfo.setTimestamp(localVirusClientInfo.timestamp);
        localConfInfo.setVersion(localVirusClientInfo.version);
      }
    }
    return localConfInfo;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.UpdateUtil
 * JD-Core Version:    0.6.2
 */
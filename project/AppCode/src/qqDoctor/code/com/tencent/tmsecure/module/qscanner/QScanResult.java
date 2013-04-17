package com.tencent.tmsecure.module.qscanner;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class QScanResult extends JceStruct
  implements Cloneable
{
  private static ApkKey a;
  public int advice = 0;
  public ApkKey apkkey = null;
  public String discription = "";
  public String label = "";
  public int malwareid = 0;
  public String name = "";
  public int type = 0;
  public String url = "";

  static
  {
    if (!QScanResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      return;
    }
  }

  public QScanResult()
  {
    setApkkey(this.apkkey);
    setType(this.type);
    setLabel(this.label);
    setDiscription(this.discription);
    setAdvice(this.advice);
    setMalwareid(this.malwareid);
    setName(this.name);
    setUrl(this.url);
  }

  public QScanResult(ApkKey paramApkKey, int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, String paramString3, String paramString4)
  {
    setApkkey(paramApkKey);
    setType(paramInt1);
    setLabel(paramString1);
    setDiscription(paramString2);
    setAdvice(paramInt2);
    setMalwareid(paramInt3);
    setName(paramString3);
    setUrl(paramString4);
  }

  public final String className()
  {
    return "QQPIM.QScanResult";
  }

  public final Object clone()
  {
    try
    {
      Object localObject2 = super.clone();
      localObject1 = localObject2;
      return localObject1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      boolean bool;
      do
      {
        bool = b;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.apkkey, "apkkey");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.label, "label");
    localJceDisplayer.display(this.discription, "discription");
    localJceDisplayer.display(this.advice, "advice");
    localJceDisplayer.display(this.malwareid, "malwareid");
    localJceDisplayer.display(this.name, "name");
    localJceDisplayer.display(this.url, "url");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = paramObject instanceof QScanResult;
      bool1 = false;
      if (bool2)
      {
        QScanResult localQScanResult = (QScanResult)paramObject;
        bool1 = false;
        if (localQScanResult != null)
        {
          boolean bool3 = JceUtil.equals(this.apkkey, localQScanResult.apkkey);
          bool1 = false;
          if (bool3)
          {
            boolean bool4 = JceUtil.equals(this.type, localQScanResult.type);
            bool1 = false;
            if (bool4)
            {
              boolean bool5 = JceUtil.equals(this.label, localQScanResult.label);
              bool1 = false;
              if (bool5)
              {
                boolean bool6 = JceUtil.equals(this.discription, localQScanResult.discription);
                bool1 = false;
                if (bool6)
                {
                  boolean bool7 = JceUtil.equals(this.advice, localQScanResult.advice);
                  bool1 = false;
                  if (bool7)
                  {
                    boolean bool8 = JceUtil.equals(this.malwareid, localQScanResult.malwareid);
                    bool1 = false;
                    if (bool8)
                    {
                      boolean bool9 = JceUtil.equals(this.name, localQScanResult.name);
                      bool1 = false;
                      if (bool9)
                      {
                        boolean bool10 = JceUtil.equals(this.url, localQScanResult.url);
                        bool1 = false;
                        if (bool10)
                          bool1 = true;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return bool1;
  }

  public final String fullClassName()
  {
    return "QQPIM.QScanResult";
  }

  public final int getAdvice()
  {
    return this.advice;
  }

  public final ApkKey getApkkey()
  {
    return this.apkkey;
  }

  public final String getDiscription()
  {
    return this.discription;
  }

  public final String getLabel()
  {
    return this.label;
  }

  public final int getMalwareid()
  {
    return this.malwareid;
  }

  public final String getName()
  {
    return this.name;
  }

  public final int getType()
  {
    return this.type;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (a == null)
      a = new ApkKey();
    this.apkkey = ((ApkKey)paramJceInputStream.read(a, 0, true));
    this.type = paramJceInputStream.read(this.type, 1, true);
    this.label = paramJceInputStream.readString(2, false);
    this.discription = paramJceInputStream.readString(3, false);
    this.advice = paramJceInputStream.read(this.advice, 4, false);
    this.malwareid = paramJceInputStream.read(this.malwareid, 5, false);
    this.name = paramJceInputStream.readString(6, false);
    this.url = paramJceInputStream.readString(7, false);
  }

  public final void setAdvice(int paramInt)
  {
    this.advice = paramInt;
  }

  public final void setApkkey(ApkKey paramApkKey)
  {
    this.apkkey = paramApkKey;
  }

  public final void setDiscription(String paramString)
  {
    this.discription = paramString;
  }

  public final void setLabel(String paramString)
  {
    this.label = paramString;
  }

  public final void setMalwareid(int paramInt)
  {
    this.malwareid = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.apkkey, 0);
    paramJceOutputStream.write(this.type, 1);
    if (this.label != null)
      paramJceOutputStream.write(this.label, 2);
    if (this.discription != null)
      paramJceOutputStream.write(this.discription, 3);
    paramJceOutputStream.write(this.advice, 4);
    paramJceOutputStream.write(this.malwareid, 5);
    if (this.name != null)
      paramJceOutputStream.write(this.name, 6);
    if (this.url != null)
      paramJceOutputStream.write(this.url, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.QScanResult
 * JD-Core Version:    0.6.2
 */
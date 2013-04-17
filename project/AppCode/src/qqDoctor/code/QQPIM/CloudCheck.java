package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudCheck extends JceStruct
  implements Cloneable
{
  static int cache_handleAdvice;
  static int cache_safeType;
  public String advice = "";
  public String descritpion = "";
  public int handleAdvice = 0;
  public String handleUrl = "";
  public int safeType = 0;
  public String short_desc = "";
  public int virusDescTimestamp = 0;
  public int virusID = 0;
  public String virusName = "";

  static
  {
    if (!CloudCheck.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudCheck()
  {
    setSafeType(this.safeType);
    setVirusName(this.virusName);
    setDescritpion(this.descritpion);
    setVirusDescTimestamp(this.virusDescTimestamp);
    setShort_desc(this.short_desc);
    setAdvice(this.advice);
    setHandleAdvice(this.handleAdvice);
    setVirusID(this.virusID);
    setHandleUrl(this.handleUrl);
  }

  public CloudCheck(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, String paramString4, int paramInt3, int paramInt4, String paramString5)
  {
    setSafeType(paramInt1);
    setVirusName(paramString1);
    setDescritpion(paramString2);
    setVirusDescTimestamp(paramInt2);
    setShort_desc(paramString3);
    setAdvice(paramString4);
    setHandleAdvice(paramInt3);
    setVirusID(paramInt4);
    setHandleUrl(paramString5);
  }

  public final String className()
  {
    return "QQPIM.CloudCheck";
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
        bool = $assertionsDisabled;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.safeType, "safeType");
    localJceDisplayer.display(this.virusName, "virusName");
    localJceDisplayer.display(this.descritpion, "descritpion");
    localJceDisplayer.display(this.virusDescTimestamp, "virusDescTimestamp");
    localJceDisplayer.display(this.short_desc, "short_desc");
    localJceDisplayer.display(this.advice, "advice");
    localJceDisplayer.display(this.handleAdvice, "handleAdvice");
    localJceDisplayer.display(this.virusID, "virusID");
    localJceDisplayer.display(this.handleUrl, "handleUrl");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudCheck localCloudCheck = (CloudCheck)paramObject;
      boolean bool2 = JceUtil.equals(this.safeType, localCloudCheck.safeType);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.virusName, localCloudCheck.virusName);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.descritpion, localCloudCheck.descritpion);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.virusDescTimestamp, localCloudCheck.virusDescTimestamp);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.short_desc, localCloudCheck.short_desc);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.advice, localCloudCheck.advice);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.handleAdvice, localCloudCheck.handleAdvice);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.virusID, localCloudCheck.virusID);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.handleUrl, localCloudCheck.handleUrl);
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

  public final String fullClassName()
  {
    return "QQPIM.CloudCheck";
  }

  public final String getAdvice()
  {
    return this.advice;
  }

  public final String getDescritpion()
  {
    return this.descritpion;
  }

  public final int getHandleAdvice()
  {
    return this.handleAdvice;
  }

  public final String getHandleUrl()
  {
    return this.handleUrl;
  }

  public final int getSafeType()
  {
    return this.safeType;
  }

  public final String getShort_desc()
  {
    return this.short_desc;
  }

  public final int getVirusDescTimestamp()
  {
    return this.virusDescTimestamp;
  }

  public final int getVirusID()
  {
    return this.virusID;
  }

  public final String getVirusName()
  {
    return this.virusName;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.safeType = paramJceInputStream.read(this.safeType, 0, true);
    this.virusName = paramJceInputStream.readString(1, false);
    this.descritpion = paramJceInputStream.readString(2, false);
    this.virusDescTimestamp = paramJceInputStream.read(this.virusDescTimestamp, 3, false);
    this.short_desc = paramJceInputStream.readString(4, false);
    this.advice = paramJceInputStream.readString(5, false);
    this.handleAdvice = paramJceInputStream.read(this.handleAdvice, 6, false);
    this.virusID = paramJceInputStream.read(this.virusID, 7, false);
    this.handleUrl = paramJceInputStream.readString(8, false);
  }

  public final void setAdvice(String paramString)
  {
    this.advice = paramString;
  }

  public final void setDescritpion(String paramString)
  {
    this.descritpion = paramString;
  }

  public final void setHandleAdvice(int paramInt)
  {
    this.handleAdvice = paramInt;
  }

  public final void setHandleUrl(String paramString)
  {
    this.handleUrl = paramString;
  }

  public final void setSafeType(int paramInt)
  {
    this.safeType = paramInt;
  }

  public final void setShort_desc(String paramString)
  {
    this.short_desc = paramString;
  }

  public final void setVirusDescTimestamp(int paramInt)
  {
    this.virusDescTimestamp = paramInt;
  }

  public final void setVirusID(int paramInt)
  {
    this.virusID = paramInt;
  }

  public final void setVirusName(String paramString)
  {
    this.virusName = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.safeType, 0);
    if (this.virusName != null)
      paramJceOutputStream.write(this.virusName, 1);
    if (this.descritpion != null)
      paramJceOutputStream.write(this.descritpion, 2);
    paramJceOutputStream.write(this.virusDescTimestamp, 3);
    if (this.short_desc != null)
      paramJceOutputStream.write(this.short_desc, 4);
    if (this.advice != null)
      paramJceOutputStream.write(this.advice, 5);
    paramJceOutputStream.write(this.handleAdvice, 6);
    paramJceOutputStream.write(this.virusID, 7);
    if (this.handleUrl != null)
      paramJceOutputStream.write(this.handleUrl, 8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CloudCheck
 * JD-Core Version:    0.6.2
 */
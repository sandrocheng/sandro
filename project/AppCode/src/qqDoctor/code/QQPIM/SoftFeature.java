package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class SoftFeature extends JceStruct
  implements Cloneable
{
  static FeatureKey cache_featureKey;
  static int cache_localSafeType;
  static ArrayList<FeatureItem> cache_vecFeatureItem;
  public int appid = 0;
  public int category = 0;
  public int engineVersion = 0;
  public FeatureKey featureKey = null;
  public boolean isBuildIn = false;
  public int localSafeType = 0;
  public int localVirusID = 0;
  public String localVirusName = "";
  public int position = 0;
  public int requestType = 0;
  public int softDescTimestamp = 0;
  public ArrayList<FeatureItem> vecFeatureItem = null;
  public int virusDescTimestamp = 0;

  static
  {
    if (!SoftFeature.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftFeature()
  {
    setFeatureKey(this.featureKey);
    setSoftDescTimestamp(this.softDescTimestamp);
    setVirusDescTimestamp(this.virusDescTimestamp);
    setVecFeatureItem(this.vecFeatureItem);
    setRequestType(this.requestType);
    setIsBuildIn(this.isBuildIn);
    setCategory(this.category);
    setPosition(this.position);
    setEngineVersion(this.engineVersion);
    setLocalSafeType(this.localSafeType);
    setLocalVirusName(this.localVirusName);
    setLocalVirusID(this.localVirusID);
    setAppid(this.appid);
  }

  public SoftFeature(FeatureKey paramFeatureKey, int paramInt1, int paramInt2, ArrayList<FeatureItem> paramArrayList, int paramInt3, boolean paramBoolean, int paramInt4, int paramInt5, int paramInt6, int paramInt7, String paramString, int paramInt8, int paramInt9)
  {
    setFeatureKey(paramFeatureKey);
    setSoftDescTimestamp(paramInt1);
    setVirusDescTimestamp(paramInt2);
    setVecFeatureItem(paramArrayList);
    setRequestType(paramInt3);
    setIsBuildIn(paramBoolean);
    setCategory(paramInt4);
    setPosition(paramInt5);
    setEngineVersion(paramInt6);
    setLocalSafeType(paramInt7);
    setLocalVirusName(paramString);
    setLocalVirusID(paramInt8);
    setAppid(paramInt9);
  }

  public final String className()
  {
    return "QQPIM.SoftFeature";
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
    localJceDisplayer.display(this.featureKey, "featureKey");
    localJceDisplayer.display(this.softDescTimestamp, "softDescTimestamp");
    localJceDisplayer.display(this.virusDescTimestamp, "virusDescTimestamp");
    localJceDisplayer.display(this.vecFeatureItem, "vecFeatureItem");
    localJceDisplayer.display(this.requestType, "requestType");
    localJceDisplayer.display(this.isBuildIn, "isBuildIn");
    localJceDisplayer.display(this.category, "category");
    localJceDisplayer.display(this.position, "position");
    localJceDisplayer.display(this.engineVersion, "engineVersion");
    localJceDisplayer.display(this.localSafeType, "localSafeType");
    localJceDisplayer.display(this.localVirusName, "localVirusName");
    localJceDisplayer.display(this.localVirusID, "localVirusID");
    localJceDisplayer.display(this.appid, "appid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftFeature localSoftFeature = (SoftFeature)paramObject;
      boolean bool2 = JceUtil.equals(this.featureKey, localSoftFeature.featureKey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.softDescTimestamp, localSoftFeature.softDescTimestamp);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.virusDescTimestamp, localSoftFeature.virusDescTimestamp);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.vecFeatureItem, localSoftFeature.vecFeatureItem);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.requestType, localSoftFeature.requestType);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.isBuildIn, localSoftFeature.isBuildIn);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.category, localSoftFeature.category);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.position, localSoftFeature.position);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.engineVersion, localSoftFeature.engineVersion);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.localSafeType, localSoftFeature.localSafeType);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.localVirusName, localSoftFeature.localVirusName);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.localVirusID, localSoftFeature.localVirusID);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.appid, localSoftFeature.appid);
                              bool1 = false;
                              if (bool14)
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
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftFeature";
  }

  public final int getAppid()
  {
    return this.appid;
  }

  public final int getCategory()
  {
    return this.category;
  }

  public final int getEngineVersion()
  {
    return this.engineVersion;
  }

  public final FeatureKey getFeatureKey()
  {
    return this.featureKey;
  }

  public final boolean getIsBuildIn()
  {
    return this.isBuildIn;
  }

  public final int getLocalSafeType()
  {
    return this.localSafeType;
  }

  public final int getLocalVirusID()
  {
    return this.localVirusID;
  }

  public final String getLocalVirusName()
  {
    return this.localVirusName;
  }

  public final int getPosition()
  {
    return this.position;
  }

  public final int getRequestType()
  {
    return this.requestType;
  }

  public final int getSoftDescTimestamp()
  {
    return this.softDescTimestamp;
  }

  public final ArrayList<FeatureItem> getVecFeatureItem()
  {
    return this.vecFeatureItem;
  }

  public final int getVirusDescTimestamp()
  {
    return this.virusDescTimestamp;
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
    if (cache_featureKey == null)
      cache_featureKey = new FeatureKey();
    this.featureKey = ((FeatureKey)paramJceInputStream.read(cache_featureKey, 0, true));
    this.softDescTimestamp = paramJceInputStream.read(this.softDescTimestamp, 1, true);
    this.virusDescTimestamp = paramJceInputStream.read(this.virusDescTimestamp, 2, true);
    if (cache_vecFeatureItem == null)
    {
      cache_vecFeatureItem = new ArrayList();
      FeatureItem localFeatureItem = new FeatureItem();
      cache_vecFeatureItem.add(localFeatureItem);
    }
    setVecFeatureItem((ArrayList)paramJceInputStream.read(cache_vecFeatureItem, 3, false));
    setRequestType(paramJceInputStream.read(this.requestType, 4, false));
    setIsBuildIn(paramJceInputStream.read(this.isBuildIn, 5, false));
    setCategory(paramJceInputStream.read(this.category, 6, false));
    setPosition(paramJceInputStream.read(this.position, 7, false));
    setEngineVersion(paramJceInputStream.read(this.engineVersion, 8, false));
    setLocalSafeType(paramJceInputStream.read(this.localSafeType, 9, false));
    setLocalVirusName(paramJceInputStream.readString(10, false));
    setLocalVirusID(paramJceInputStream.read(this.localVirusID, 11, false));
    setAppid(paramJceInputStream.read(this.appid, 12, false));
  }

  public final void setAppid(int paramInt)
  {
    this.appid = paramInt;
  }

  public final void setCategory(int paramInt)
  {
    this.category = paramInt;
  }

  public final void setEngineVersion(int paramInt)
  {
    this.engineVersion = paramInt;
  }

  public final void setFeatureKey(FeatureKey paramFeatureKey)
  {
    this.featureKey = paramFeatureKey;
  }

  public final void setIsBuildIn(boolean paramBoolean)
  {
    this.isBuildIn = paramBoolean;
  }

  public final void setLocalSafeType(int paramInt)
  {
    this.localSafeType = paramInt;
  }

  public final void setLocalVirusID(int paramInt)
  {
    this.localVirusID = paramInt;
  }

  public final void setLocalVirusName(String paramString)
  {
    this.localVirusName = paramString;
  }

  public final void setPosition(int paramInt)
  {
    this.position = paramInt;
  }

  public final void setRequestType(int paramInt)
  {
    this.requestType = paramInt;
  }

  public final void setSoftDescTimestamp(int paramInt)
  {
    this.softDescTimestamp = paramInt;
  }

  public final void setVecFeatureItem(ArrayList<FeatureItem> paramArrayList)
  {
    this.vecFeatureItem = paramArrayList;
  }

  public final void setVirusDescTimestamp(int paramInt)
  {
    this.virusDescTimestamp = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.featureKey, 0);
    paramJceOutputStream.write(this.softDescTimestamp, 1);
    paramJceOutputStream.write(this.virusDescTimestamp, 2);
    if (this.vecFeatureItem != null)
      paramJceOutputStream.write(this.vecFeatureItem, 3);
    paramJceOutputStream.write(this.requestType, 4);
    paramJceOutputStream.write(this.isBuildIn, 5);
    paramJceOutputStream.write(this.category, 6);
    paramJceOutputStream.write(this.position, 7);
    paramJceOutputStream.write(this.engineVersion, 8);
    paramJceOutputStream.write(this.localSafeType, 9);
    if (this.localVirusName != null)
      paramJceOutputStream.write(this.localVirusName, 10);
    paramJceOutputStream.write(this.localVirusID, 11);
    paramJceOutputStream.write(this.appid, 12);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftFeature
 * JD-Core Version:    0.6.2
 */
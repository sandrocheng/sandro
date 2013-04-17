package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AnalyseInfo extends JceStruct
  implements Cloneable
{
  static int cache_actionLevel;
  static CloudCheck cache_cloudCheck;
  static FeatureKey cache_featureKey;
  static SoftInfo cache_softInfo;
  static int cache_softState;
  static UploadFileInfo cache_uploadFileInfo;
  public int actionID = 0;
  public int actionLevel = 0;
  public CloudCheck cloudCheck = null;
  public FeatureKey featureKey = null;
  public int report_feature = 0;
  public SoftInfo softInfo = null;
  public int softState = 0;
  public UploadFileInfo uploadFileInfo = null;

  static
  {
    if (!AnalyseInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public AnalyseInfo()
  {
    setFeatureKey(this.featureKey);
    setSoftInfo(this.softInfo);
    setCloudCheck(this.cloudCheck);
    setReport_feature(this.report_feature);
    setUploadFileInfo(this.uploadFileInfo);
    setSoftState(this.softState);
    setActionLevel(this.actionLevel);
    setActionID(this.actionID);
  }

  public AnalyseInfo(FeatureKey paramFeatureKey, SoftInfo paramSoftInfo, CloudCheck paramCloudCheck, int paramInt1, UploadFileInfo paramUploadFileInfo, int paramInt2, int paramInt3, int paramInt4)
  {
    setFeatureKey(paramFeatureKey);
    setSoftInfo(paramSoftInfo);
    setCloudCheck(paramCloudCheck);
    setReport_feature(paramInt1);
    setUploadFileInfo(paramUploadFileInfo);
    setSoftState(paramInt2);
    setActionLevel(paramInt3);
    setActionID(paramInt4);
  }

  public final String className()
  {
    return "QQPIM.AnalyseInfo";
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
    localJceDisplayer.display(this.softInfo, "softInfo");
    localJceDisplayer.display(this.cloudCheck, "cloudCheck");
    localJceDisplayer.display(this.report_feature, "report_feature");
    localJceDisplayer.display(this.uploadFileInfo, "uploadFileInfo");
    localJceDisplayer.display(this.softState, "softState");
    localJceDisplayer.display(this.actionLevel, "actionLevel");
    localJceDisplayer.display(this.actionID, "actionID");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      AnalyseInfo localAnalyseInfo = (AnalyseInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.featureKey, localAnalyseInfo.featureKey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.softInfo, localAnalyseInfo.softInfo);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.cloudCheck, localAnalyseInfo.cloudCheck);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.report_feature, localAnalyseInfo.report_feature);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.uploadFileInfo, localAnalyseInfo.uploadFileInfo);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.softState, localAnalyseInfo.softState);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.actionLevel, localAnalyseInfo.actionLevel);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.actionID, localAnalyseInfo.actionID);
                    bool1 = false;
                    if (bool9)
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

  public final String fullClassName()
  {
    return "QQPIM.AnalyseInfo";
  }

  public final int getActionID()
  {
    return this.actionID;
  }

  public final int getActionLevel()
  {
    return this.actionLevel;
  }

  public final CloudCheck getCloudCheck()
  {
    return this.cloudCheck;
  }

  public final FeatureKey getFeatureKey()
  {
    return this.featureKey;
  }

  public final int getReport_feature()
  {
    return this.report_feature;
  }

  public final SoftInfo getSoftInfo()
  {
    return this.softInfo;
  }

  public final int getSoftState()
  {
    return this.softState;
  }

  public final UploadFileInfo getUploadFileInfo()
  {
    return this.uploadFileInfo;
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
    if (cache_softInfo == null)
      cache_softInfo = new SoftInfo();
    this.softInfo = ((SoftInfo)paramJceInputStream.read(cache_softInfo, 1, true));
    if (cache_cloudCheck == null)
      cache_cloudCheck = new CloudCheck();
    this.cloudCheck = ((CloudCheck)paramJceInputStream.read(cache_cloudCheck, 2, true));
    this.report_feature = paramJceInputStream.read(this.report_feature, 3, true);
    if (cache_uploadFileInfo == null)
      cache_uploadFileInfo = new UploadFileInfo();
    this.uploadFileInfo = ((UploadFileInfo)paramJceInputStream.read(cache_uploadFileInfo, 4, false));
    this.softState = paramJceInputStream.read(this.softState, 5, false);
    this.actionLevel = paramJceInputStream.read(this.actionLevel, 6, false);
    this.actionID = paramJceInputStream.read(this.actionID, 7, false);
  }

  public final void setActionID(int paramInt)
  {
    this.actionID = paramInt;
  }

  public final void setActionLevel(int paramInt)
  {
    this.actionLevel = paramInt;
  }

  public final void setCloudCheck(CloudCheck paramCloudCheck)
  {
    this.cloudCheck = paramCloudCheck;
  }

  public final void setFeatureKey(FeatureKey paramFeatureKey)
  {
    this.featureKey = paramFeatureKey;
  }

  public final void setReport_feature(int paramInt)
  {
    this.report_feature = paramInt;
  }

  public final void setSoftInfo(SoftInfo paramSoftInfo)
  {
    this.softInfo = paramSoftInfo;
  }

  public final void setSoftState(int paramInt)
  {
    this.softState = paramInt;
  }

  public final void setUploadFileInfo(UploadFileInfo paramUploadFileInfo)
  {
    this.uploadFileInfo = paramUploadFileInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.featureKey, 0);
    paramJceOutputStream.write(this.softInfo, 1);
    paramJceOutputStream.write(this.cloudCheck, 2);
    paramJceOutputStream.write(this.report_feature, 3);
    if (this.uploadFileInfo != null)
      paramJceOutputStream.write(this.uploadFileInfo, 4);
    paramJceOutputStream.write(this.softState, 5);
    paramJceOutputStream.write(this.actionLevel, 6);
    paramJceOutputStream.write(this.actionID, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.AnalyseInfo
 * JD-Core Version:    0.6.2
 */
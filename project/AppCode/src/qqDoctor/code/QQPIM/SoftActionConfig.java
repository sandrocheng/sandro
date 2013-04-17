package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftActionConfig extends JceStruct
  implements Cloneable
{
  static int cache_actionLevel;
  static FeatureKey cache_featureKey;
  public int actionLevel = 0;
  public FeatureKey featureKey = null;

  static
  {
    if (!SoftActionConfig.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftActionConfig()
  {
    setFeatureKey(this.featureKey);
    setActionLevel(this.actionLevel);
  }

  public SoftActionConfig(FeatureKey paramFeatureKey, int paramInt)
  {
    setFeatureKey(paramFeatureKey);
    setActionLevel(paramInt);
  }

  public final String className()
  {
    return "QQPIM.SoftActionConfig";
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
    localJceDisplayer.display(this.actionLevel, "actionLevel");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftActionConfig localSoftActionConfig = (SoftActionConfig)paramObject;
      boolean bool2 = JceUtil.equals(this.featureKey, localSoftActionConfig.featureKey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.actionLevel, localSoftActionConfig.actionLevel);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftActionConfig";
  }

  public final int getActionLevel()
  {
    return this.actionLevel;
  }

  public final FeatureKey getFeatureKey()
  {
    return this.featureKey;
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
    this.actionLevel = paramJceInputStream.read(this.actionLevel, 1, false);
  }

  public final void setActionLevel(int paramInt)
  {
    this.actionLevel = paramInt;
  }

  public final void setFeatureKey(FeatureKey paramFeatureKey)
  {
    this.featureKey = paramFeatureKey;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.featureKey, 0);
    paramJceOutputStream.write(this.actionLevel, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftActionConfig
 * JD-Core Version:    0.6.2
 */
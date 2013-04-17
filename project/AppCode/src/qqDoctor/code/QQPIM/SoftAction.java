package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class SoftAction extends JceStruct
  implements Cloneable
{
  static FeatureKey cache_featurekey;
  static ArrayList<ActionItem> cache_vecaction;
  public int actionID = 0;
  public FeatureKey featurekey = null;
  public ArrayList<ActionItem> vecaction = null;

  static
  {
    if (!SoftAction.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftAction()
  {
    setFeaturekey(this.featurekey);
    setVecaction(this.vecaction);
    setActionID(this.actionID);
  }

  public SoftAction(FeatureKey paramFeatureKey, ArrayList<ActionItem> paramArrayList, int paramInt)
  {
    setFeaturekey(paramFeatureKey);
    setVecaction(paramArrayList);
    setActionID(paramInt);
  }

  public final String className()
  {
    return "QQPIM.SoftAction";
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
    localJceDisplayer.display(this.featurekey, "featurekey");
    localJceDisplayer.display(this.vecaction, "vecaction");
    localJceDisplayer.display(this.actionID, "actionID");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftAction localSoftAction = (SoftAction)paramObject;
      boolean bool2 = JceUtil.equals(this.featurekey, localSoftAction.featurekey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.vecaction, localSoftAction.vecaction);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.actionID, localSoftAction.actionID);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftAction";
  }

  public final int getActionID()
  {
    return this.actionID;
  }

  public final FeatureKey getFeaturekey()
  {
    return this.featurekey;
  }

  public final ArrayList<ActionItem> getVecaction()
  {
    return this.vecaction;
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
    if (cache_featurekey == null)
      cache_featurekey = new FeatureKey();
    this.featurekey = ((FeatureKey)paramJceInputStream.read(cache_featurekey, 0, true));
    if (cache_vecaction == null)
    {
      cache_vecaction = new ArrayList();
      ActionItem localActionItem = new ActionItem();
      cache_vecaction.add(localActionItem);
    }
    setVecaction((ArrayList)paramJceInputStream.read(cache_vecaction, 1, true));
    setActionID(paramJceInputStream.read(this.actionID, 2, false));
  }

  public final void setActionID(int paramInt)
  {
    this.actionID = paramInt;
  }

  public final void setFeaturekey(FeatureKey paramFeatureKey)
  {
    this.featurekey = paramFeatureKey;
  }

  public final void setVecaction(ArrayList<ActionItem> paramArrayList)
  {
    this.vecaction = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.featurekey, 0);
    paramJceOutputStream.write(this.vecaction, 1);
    paramJceOutputStream.write(this.actionID, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftAction
 * JD-Core Version:    0.6.2
 */
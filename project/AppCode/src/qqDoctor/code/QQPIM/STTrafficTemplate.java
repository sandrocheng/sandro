package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STTrafficTemplate extends JceStruct
  implements Cloneable
{
  static ArrayList<STMatchRule> cache_matchRules;
  public ArrayList<STMatchRule> matchRules = null;

  static
  {
    if (!STTrafficTemplate.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STTrafficTemplate()
  {
    setMatchRules(this.matchRules);
  }

  public STTrafficTemplate(ArrayList<STMatchRule> paramArrayList)
  {
    setMatchRules(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STTrafficTemplate";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.matchRules, "matchRules");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STTrafficTemplate localSTTrafficTemplate;
    for (boolean bool = false; ; bool = JceUtil.equals(this.matchRules, localSTTrafficTemplate.matchRules))
    {
      return bool;
      localSTTrafficTemplate = (STTrafficTemplate)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STTrafficTemplate";
  }

  public final ArrayList<STMatchRule> getMatchRules()
  {
    return this.matchRules;
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
    if (cache_matchRules == null)
    {
      cache_matchRules = new ArrayList();
      STMatchRule localSTMatchRule = new STMatchRule();
      cache_matchRules.add(localSTMatchRule);
    }
    setMatchRules((ArrayList)paramJceInputStream.read(cache_matchRules, 0, false));
  }

  public final void setMatchRules(ArrayList<STMatchRule> paramArrayList)
  {
    this.matchRules = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.matchRules != null)
      paramJceOutputStream.write(this.matchRules, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STTrafficTemplate
 * JD-Core Version:    0.6.2
 */
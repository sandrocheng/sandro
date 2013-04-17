package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ActionItem extends JceStruct
  implements Cloneable
{
  static int cache_level;
  static int cache_type;
  public int count = 0;
  public String desc = "";
  public int level = 0;
  public int monitorType = 0;
  public int replyType = 0;
  public int timestamp = 0;
  public int type = 0;

  static
  {
    if (!ActionItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ActionItem()
  {
    setType(this.type);
    setDesc(this.desc);
    setLevel(this.level);
    setCount(this.count);
    setTimestamp(this.timestamp);
    setMonitorType(this.monitorType);
    setReplyType(this.replyType);
  }

  public ActionItem(int paramInt1, String paramString, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setType(paramInt1);
    setDesc(paramString);
    setLevel(paramInt2);
    setCount(paramInt3);
    setTimestamp(paramInt4);
    setMonitorType(paramInt5);
    setReplyType(paramInt6);
  }

  public final String className()
  {
    return "QQPIM.ActionItem";
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
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.desc, "desc");
    localJceDisplayer.display(this.level, "level");
    localJceDisplayer.display(this.count, "count");
    localJceDisplayer.display(this.timestamp, "timestamp");
    localJceDisplayer.display(this.monitorType, "monitorType");
    localJceDisplayer.display(this.replyType, "replyType");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ActionItem localActionItem = (ActionItem)paramObject;
      boolean bool2 = JceUtil.equals(this.type, localActionItem.type);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.desc, localActionItem.desc);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.level, localActionItem.level);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.count, localActionItem.count);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.timestamp, localActionItem.timestamp);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.monitorType, localActionItem.monitorType);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.replyType, localActionItem.replyType);
                  bool1 = false;
                  if (bool8)
                    bool1 = true;
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
    return "QQPIM.ActionItem";
  }

  public final int getCount()
  {
    return this.count;
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final int getLevel()
  {
    return this.level;
  }

  public final int getMonitorType()
  {
    return this.monitorType;
  }

  public final int getReplyType()
  {
    return this.replyType;
  }

  public final int getTimestamp()
  {
    return this.timestamp;
  }

  public final int getType()
  {
    return this.type;
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
    this.type = paramJceInputStream.read(this.type, 0, true);
    this.desc = paramJceInputStream.readString(1, true);
    this.level = paramJceInputStream.read(this.level, 2, true);
    this.count = paramJceInputStream.read(this.count, 3, false);
    this.timestamp = paramJceInputStream.read(this.timestamp, 4, false);
    this.monitorType = paramJceInputStream.read(this.monitorType, 5, false);
    this.replyType = paramJceInputStream.read(this.replyType, 6, false);
  }

  public final void setCount(int paramInt)
  {
    this.count = paramInt;
  }

  public final void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public final void setLevel(int paramInt)
  {
    this.level = paramInt;
  }

  public final void setMonitorType(int paramInt)
  {
    this.monitorType = paramInt;
  }

  public final void setReplyType(int paramInt)
  {
    this.replyType = paramInt;
  }

  public final void setTimestamp(int paramInt)
  {
    this.timestamp = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.type, 0);
    paramJceOutputStream.write(this.desc, 1);
    paramJceOutputStream.write(this.level, 2);
    paramJceOutputStream.write(this.count, 3);
    paramJceOutputStream.write(this.timestamp, 4);
    paramJceOutputStream.write(this.monitorType, 5);
    paramJceOutputStream.write(this.replyType, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ActionItem
 * JD-Core Version:    0.6.2
 */
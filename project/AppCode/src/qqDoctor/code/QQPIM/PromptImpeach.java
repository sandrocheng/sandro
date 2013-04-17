package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PromptImpeach extends JceStruct
  implements Cloneable
{
  public String actionmarkstr = "";
  public boolean bfiltercontent = true;
  public boolean bswitch = true;
  public String keywords = "";
  public int maxreport = 0;
  public int maxsinglereport = 0;

  static
  {
    if (!PromptImpeach.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PromptImpeach()
  {
    setBswitch(this.bswitch);
    setActionmarkstr(this.actionmarkstr);
    setMaxreport(this.maxreport);
    setBfiltercontent(this.bfiltercontent);
    setKeywords(this.keywords);
    setMaxsinglereport(this.maxsinglereport);
  }

  public PromptImpeach(boolean paramBoolean1, String paramString1, int paramInt1, boolean paramBoolean2, String paramString2, int paramInt2)
  {
    setBswitch(paramBoolean1);
    setActionmarkstr(paramString1);
    setMaxreport(paramInt1);
    setBfiltercontent(paramBoolean2);
    setKeywords(paramString2);
    setMaxsinglereport(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.PromptImpeach";
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
    localJceDisplayer.display(this.bswitch, "bswitch");
    localJceDisplayer.display(this.actionmarkstr, "actionmarkstr");
    localJceDisplayer.display(this.maxreport, "maxreport");
    localJceDisplayer.display(this.bfiltercontent, "bfiltercontent");
    localJceDisplayer.display(this.keywords, "keywords");
    localJceDisplayer.display(this.maxsinglereport, "maxsinglereport");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PromptImpeach localPromptImpeach = (PromptImpeach)paramObject;
      boolean bool2 = JceUtil.equals(this.bswitch, localPromptImpeach.bswitch);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.actionmarkstr, localPromptImpeach.actionmarkstr);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.maxreport, localPromptImpeach.maxreport);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.bfiltercontent, localPromptImpeach.bfiltercontent);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.keywords, localPromptImpeach.keywords);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.maxsinglereport, localPromptImpeach.maxsinglereport);
                bool1 = false;
                if (bool7)
                  bool1 = true;
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PromptImpeach";
  }

  public final String getActionmarkstr()
  {
    return this.actionmarkstr;
  }

  public final boolean getBfiltercontent()
  {
    return this.bfiltercontent;
  }

  public final boolean getBswitch()
  {
    return this.bswitch;
  }

  public final String getKeywords()
  {
    return this.keywords;
  }

  public final int getMaxreport()
  {
    return this.maxreport;
  }

  public final int getMaxsinglereport()
  {
    return this.maxsinglereport;
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
    this.bswitch = paramJceInputStream.read(this.bswitch, 0, true);
    this.actionmarkstr = paramJceInputStream.readString(1, false);
    this.maxreport = paramJceInputStream.read(this.maxreport, 2, false);
    this.bfiltercontent = paramJceInputStream.read(this.bfiltercontent, 3, false);
    this.keywords = paramJceInputStream.readString(4, false);
    this.maxsinglereport = paramJceInputStream.read(this.maxsinglereport, 5, false);
  }

  public final void setActionmarkstr(String paramString)
  {
    this.actionmarkstr = paramString;
  }

  public final void setBfiltercontent(boolean paramBoolean)
  {
    this.bfiltercontent = paramBoolean;
  }

  public final void setBswitch(boolean paramBoolean)
  {
    this.bswitch = paramBoolean;
  }

  public final void setKeywords(String paramString)
  {
    this.keywords = paramString;
  }

  public final void setMaxreport(int paramInt)
  {
    this.maxreport = paramInt;
  }

  public final void setMaxsinglereport(int paramInt)
  {
    this.maxsinglereport = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.bswitch, 0);
    if (this.actionmarkstr != null)
      paramJceOutputStream.write(this.actionmarkstr, 1);
    paramJceOutputStream.write(this.maxreport, 2);
    paramJceOutputStream.write(this.bfiltercontent, 3);
    if (this.keywords != null)
      paramJceOutputStream.write(this.keywords, 4);
    paramJceOutputStream.write(this.maxsinglereport, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PromptImpeach
 * JD-Core Version:    0.6.2
 */
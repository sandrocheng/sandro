package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DayColorEggs extends JceStruct
  implements Cloneable
{
  public boolean bshare = true;
  public String eggurl = "";
  public int nvalue = 0;
  public int orbit = 0;
  public String text = "";
  public String toast = "";
  public String wording = "";

  static
  {
    if (!DayColorEggs.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DayColorEggs()
  {
    setNvalue(this.nvalue);
    setEggurl(this.eggurl);
    setOrbit(this.orbit);
    setToast(this.toast);
    setBshare(this.bshare);
    setWording(this.wording);
    setText(this.text);
  }

  public DayColorEggs(int paramInt1, String paramString1, int paramInt2, String paramString2, boolean paramBoolean, String paramString3, String paramString4)
  {
    setNvalue(paramInt1);
    setEggurl(paramString1);
    setOrbit(paramInt2);
    setToast(paramString2);
    setBshare(paramBoolean);
    setWording(paramString3);
    setText(paramString4);
  }

  public final String className()
  {
    return "QQPIM.DayColorEggs";
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
    localJceDisplayer.display(this.nvalue, "nvalue");
    localJceDisplayer.display(this.eggurl, "eggurl");
    localJceDisplayer.display(this.orbit, "orbit");
    localJceDisplayer.display(this.toast, "toast");
    localJceDisplayer.display(this.bshare, "bshare");
    localJceDisplayer.display(this.wording, "wording");
    localJceDisplayer.display(this.text, "text");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      DayColorEggs localDayColorEggs = (DayColorEggs)paramObject;
      boolean bool2 = JceUtil.equals(this.nvalue, localDayColorEggs.nvalue);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.eggurl, localDayColorEggs.eggurl);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.orbit, localDayColorEggs.orbit);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.toast, localDayColorEggs.toast);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.bshare, localDayColorEggs.bshare);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.wording, localDayColorEggs.wording);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.text, localDayColorEggs.text);
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
    return "QQPIM.DayColorEggs";
  }

  public final boolean getBshare()
  {
    return this.bshare;
  }

  public final String getEggurl()
  {
    return this.eggurl;
  }

  public final int getNvalue()
  {
    return this.nvalue;
  }

  public final int getOrbit()
  {
    return this.orbit;
  }

  public final String getText()
  {
    return this.text;
  }

  public final String getToast()
  {
    return this.toast;
  }

  public final String getWording()
  {
    return this.wording;
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
    this.nvalue = paramJceInputStream.read(this.nvalue, 0, true);
    this.eggurl = paramJceInputStream.readString(1, true);
    this.orbit = paramJceInputStream.read(this.orbit, 2, true);
    this.toast = paramJceInputStream.readString(3, true);
    this.bshare = paramJceInputStream.read(this.bshare, 4, false);
    this.wording = paramJceInputStream.readString(5, false);
    this.text = paramJceInputStream.readString(6, false);
  }

  public final void setBshare(boolean paramBoolean)
  {
    this.bshare = paramBoolean;
  }

  public final void setEggurl(String paramString)
  {
    this.eggurl = paramString;
  }

  public final void setNvalue(int paramInt)
  {
    this.nvalue = paramInt;
  }

  public final void setOrbit(int paramInt)
  {
    this.orbit = paramInt;
  }

  public final void setText(String paramString)
  {
    this.text = paramString;
  }

  public final void setToast(String paramString)
  {
    this.toast = paramString;
  }

  public final void setWording(String paramString)
  {
    this.wording = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nvalue, 0);
    paramJceOutputStream.write(this.eggurl, 1);
    paramJceOutputStream.write(this.orbit, 2);
    paramJceOutputStream.write(this.toast, 3);
    paramJceOutputStream.write(this.bshare, 4);
    if (this.wording != null)
      paramJceOutputStream.write(this.wording, 5);
    if (this.text != null)
      paramJceOutputStream.write(this.text, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.DayColorEggs
 * JD-Core Version:    0.6.2
 */
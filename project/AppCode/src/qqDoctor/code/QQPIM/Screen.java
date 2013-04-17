package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Screen extends JceStruct
  implements Cloneable
{
  public int hpixel = 0;
  public int wpixel = 0;

  static
  {
    if (!Screen.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Screen()
  {
    setHpixel(this.hpixel);
    setWpixel(this.wpixel);
  }

  public Screen(int paramInt1, int paramInt2)
  {
    setHpixel(paramInt1);
    setWpixel(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.Screen";
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
    localJceDisplayer.display(this.hpixel, "hpixel");
    localJceDisplayer.display(this.wpixel, "wpixel");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Screen localScreen = (Screen)paramObject;
      boolean bool2 = JceUtil.equals(this.hpixel, localScreen.hpixel);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.wpixel, localScreen.wpixel);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.Screen";
  }

  public final int getHpixel()
  {
    return this.hpixel;
  }

  public final int getWpixel()
  {
    return this.wpixel;
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
    this.hpixel = paramJceInputStream.read(this.hpixel, 0, true);
    this.wpixel = paramJceInputStream.read(this.wpixel, 1, true);
  }

  public final void setHpixel(int paramInt)
  {
    this.hpixel = paramInt;
  }

  public final void setWpixel(int paramInt)
  {
    this.wpixel = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.hpixel, 0);
    paramJceOutputStream.write(this.wpixel, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Screen
 * JD-Core Version:    0.6.2
 */
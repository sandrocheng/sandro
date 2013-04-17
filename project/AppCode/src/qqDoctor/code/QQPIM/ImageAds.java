package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ImageAds extends JceStruct
  implements Cloneable
{
  public String linkurl = "";
  public int location = 0;
  public String picurl = "";
  public int showtime = 0;
  public String title = "";

  static
  {
    if (!ImageAds.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ImageAds()
  {
    setPicurl(this.picurl);
    setLinkurl(this.linkurl);
    setLocation(this.location);
    setShowtime(this.showtime);
    setTitle(this.title);
  }

  public ImageAds(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3)
  {
    setPicurl(paramString1);
    setLinkurl(paramString2);
    setLocation(paramInt1);
    setShowtime(paramInt2);
    setTitle(paramString3);
  }

  public final String className()
  {
    return "QQPIM.ImageAds";
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
    localJceDisplayer.display(this.picurl, "picurl");
    localJceDisplayer.display(this.linkurl, "linkurl");
    localJceDisplayer.display(this.location, "location");
    localJceDisplayer.display(this.showtime, "showtime");
    localJceDisplayer.display(this.title, "title");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ImageAds localImageAds = (ImageAds)paramObject;
      boolean bool2 = JceUtil.equals(this.picurl, localImageAds.picurl);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.linkurl, localImageAds.linkurl);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.location, localImageAds.location);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.showtime, localImageAds.showtime);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.title, localImageAds.title);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ImageAds";
  }

  public final String getLinkurl()
  {
    return this.linkurl;
  }

  public final int getLocation()
  {
    return this.location;
  }

  public final String getPicurl()
  {
    return this.picurl;
  }

  public final int getShowtime()
  {
    return this.showtime;
  }

  public final String getTitle()
  {
    return this.title;
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
    this.picurl = paramJceInputStream.readString(0, true);
    this.linkurl = paramJceInputStream.readString(1, true);
    this.location = paramJceInputStream.read(this.location, 2, false);
    this.showtime = paramJceInputStream.read(this.showtime, 3, false);
    this.title = paramJceInputStream.readString(4, false);
  }

  public final void setLinkurl(String paramString)
  {
    this.linkurl = paramString;
  }

  public final void setLocation(int paramInt)
  {
    this.location = paramInt;
  }

  public final void setPicurl(String paramString)
  {
    this.picurl = paramString;
  }

  public final void setShowtime(int paramInt)
  {
    this.showtime = paramInt;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.picurl, 0);
    paramJceOutputStream.write(this.linkurl, 1);
    paramJceOutputStream.write(this.location, 2);
    paramJceOutputStream.write(this.showtime, 3);
    if (this.title != null)
      paramJceOutputStream.write(this.title, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ImageAds
 * JD-Core Version:    0.6.2
 */
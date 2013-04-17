package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class AndroidSimpleInfoExpand extends JceStruct
  implements Cloneable
{
  static ArrayList<String> cache_picurls;
  static int cache_sign;
  public ArrayList<String> picurls = null;
  public String recommend = "";
  public int sign = ESoftSignType.SIGN_NONE.value();
  public String signature = "";

  static
  {
    if (!AndroidSimpleInfoExpand.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public AndroidSimpleInfoExpand()
  {
    setRecommend(this.recommend);
    setSign(this.sign);
    setSignature(this.signature);
    setPicurls(this.picurls);
  }

  public AndroidSimpleInfoExpand(String paramString1, int paramInt, String paramString2, ArrayList<String> paramArrayList)
  {
    setRecommend(paramString1);
    setSign(paramInt);
    setSignature(paramString2);
    setPicurls(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.AndroidSimpleInfoExpand";
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
    localJceDisplayer.display(this.recommend, "recommend");
    localJceDisplayer.display(this.sign, "sign");
    localJceDisplayer.display(this.signature, "signature");
    localJceDisplayer.display(this.picurls, "picurls");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      AndroidSimpleInfoExpand localAndroidSimpleInfoExpand = (AndroidSimpleInfoExpand)paramObject;
      boolean bool2 = JceUtil.equals(this.recommend, localAndroidSimpleInfoExpand.recommend);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.sign, localAndroidSimpleInfoExpand.sign);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.signature, localAndroidSimpleInfoExpand.signature);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.picurls, localAndroidSimpleInfoExpand.picurls);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.AndroidSimpleInfoExpand";
  }

  public final ArrayList<String> getPicurls()
  {
    return this.picurls;
  }

  public final String getRecommend()
  {
    return this.recommend;
  }

  public final int getSign()
  {
    return this.sign;
  }

  public final String getSignature()
  {
    return this.signature;
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
    this.recommend = paramJceInputStream.readString(0, false);
    this.sign = paramJceInputStream.read(this.sign, 1, false);
    this.signature = paramJceInputStream.readString(2, false);
    if (cache_picurls == null)
    {
      cache_picurls = new ArrayList();
      cache_picurls.add("");
    }
    setPicurls((ArrayList)paramJceInputStream.read(cache_picurls, 3, false));
  }

  public final void setPicurls(ArrayList<String> paramArrayList)
  {
    this.picurls = paramArrayList;
  }

  public final void setRecommend(String paramString)
  {
    this.recommend = paramString;
  }

  public final void setSign(int paramInt)
  {
    this.sign = paramInt;
  }

  public final void setSignature(String paramString)
  {
    this.signature = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.recommend != null)
      paramJceOutputStream.write(this.recommend, 0);
    paramJceOutputStream.write(this.sign, 1);
    if (this.signature != null)
      paramJceOutputStream.write(this.signature, 2);
    if (this.picurls != null)
      paramJceOutputStream.write(this.picurls, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.AndroidSimpleInfoExpand
 * JD-Core Version:    0.6.2
 */
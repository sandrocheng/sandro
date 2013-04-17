package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RspTemplate extends JceStruct
{
  static ArrayList<UrlCheckResponse> cache_rspTemp;
  public ArrayList<UrlCheckResponse> rspTemp = null;

  static
  {
    if (!RspTemplate.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspTemplate()
  {
    setRspTemp(this.rspTemp);
  }

  public RspTemplate(ArrayList<UrlCheckResponse> paramArrayList)
  {
    setRspTemp(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.RspTemplate";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.rspTemp, "rspTemp");
  }

  public final boolean equals(Object paramObject)
  {
    RspTemplate localRspTemplate = (RspTemplate)paramObject;
    return JceUtil.equals(this.rspTemp, localRspTemplate.rspTemp);
  }

  public final ArrayList<UrlCheckResponse> getRspTemp()
  {
    return this.rspTemp;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_rspTemp == null)
    {
      cache_rspTemp = new ArrayList();
      UrlCheckResponse localUrlCheckResponse = new UrlCheckResponse();
      cache_rspTemp.add(localUrlCheckResponse);
    }
    setRspTemp((ArrayList)paramJceInputStream.read(cache_rspTemp, 0, false));
  }

  public final void setRspTemp(ArrayList<UrlCheckResponse> paramArrayList)
  {
    this.rspTemp = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.rspTemp != null)
      paramJceOutputStream.write(this.rspTemp, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RspTemplate
 * JD-Core Version:    0.6.2
 */
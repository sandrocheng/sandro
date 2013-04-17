package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RequestTemplate extends JceStruct
{
  static ArrayList<UrlCheckRequest> cache_reqTemp;
  public ArrayList<UrlCheckRequest> reqTemp = null;

  static
  {
    if (!RequestTemplate.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RequestTemplate()
  {
    setReqTemp(this.reqTemp);
  }

  public RequestTemplate(ArrayList<UrlCheckRequest> paramArrayList)
  {
    setReqTemp(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.RequestTemplate";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.reqTemp, "reqTemp");
  }

  public final boolean equals(Object paramObject)
  {
    RequestTemplate localRequestTemplate = (RequestTemplate)paramObject;
    return JceUtil.equals(this.reqTemp, localRequestTemplate.reqTemp);
  }

  public final ArrayList<UrlCheckRequest> getReqTemp()
  {
    return this.reqTemp;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_reqTemp == null)
    {
      cache_reqTemp = new ArrayList();
      UrlCheckRequest localUrlCheckRequest = new UrlCheckRequest();
      cache_reqTemp.add(localUrlCheckRequest);
    }
    setReqTemp((ArrayList)paramJceInputStream.read(cache_reqTemp, 0, false));
  }

  public final void setReqTemp(ArrayList<UrlCheckRequest> paramArrayList)
  {
    this.reqTemp = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.reqTemp != null)
      paramJceOutputStream.write(this.reqTemp, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RequestTemplate
 * JD-Core Version:    0.6.2
 */
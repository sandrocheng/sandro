package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class VirusInfo extends JceStruct
  implements Cloneable
{
  static ArrayList<VirusFeature> cache_features;
  public int advice = 0;
  public String description = "";
  public ArrayList<VirusFeature> features = null;
  public int id = 0;
  public String label = "";
  public int level = 0;
  public int method = 0;
  public String name = "";
  public int optype = 0;
  public byte ostype = 0;
  public int pkgnum = 0;
  public int safetype = 0;
  public int scantype = 0;
  public int timestamp = 0;
  public String url = "";

  static
  {
    if (!VirusInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VirusInfo()
  {
    setId(this.id);
    setName(this.name);
    setTimestamp(this.timestamp);
    setOstype(this.ostype);
    setDescription(this.description);
    setFeatures(this.features);
    setSafetype(this.safetype);
    setAdvice(this.advice);
    setLabel(this.label);
    setOptype(this.optype);
    setScantype(this.scantype);
    setLevel(this.level);
    setMethod(this.method);
    setUrl(this.url);
    setPkgnum(this.pkgnum);
  }

  public VirusInfo(int paramInt1, String paramString1, int paramInt2, byte paramByte, String paramString2, ArrayList<VirusFeature> paramArrayList, int paramInt3, int paramInt4, String paramString3, int paramInt5, int paramInt6, int paramInt7, int paramInt8, String paramString4, int paramInt9)
  {
    setId(paramInt1);
    setName(paramString1);
    setTimestamp(paramInt2);
    setOstype(paramByte);
    setDescription(paramString2);
    setFeatures(paramArrayList);
    setSafetype(paramInt3);
    setAdvice(paramInt4);
    setLabel(paramString3);
    setOptype(paramInt5);
    setScantype(paramInt6);
    setLevel(paramInt7);
    setMethod(paramInt8);
    setUrl(paramString4);
    setPkgnum(paramInt9);
  }

  public final String className()
  {
    return "QQPIM.VirusInfo";
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
    localJceDisplayer.display(this.id, "id");
    localJceDisplayer.display(this.name, "name");
    localJceDisplayer.display(this.timestamp, "timestamp");
    localJceDisplayer.display(this.ostype, "ostype");
    localJceDisplayer.display(this.description, "description");
    localJceDisplayer.display(this.features, "features");
    localJceDisplayer.display(this.safetype, "safetype");
    localJceDisplayer.display(this.advice, "advice");
    localJceDisplayer.display(this.label, "label");
    localJceDisplayer.display(this.optype, "optype");
    localJceDisplayer.display(this.scantype, "scantype");
    localJceDisplayer.display(this.level, "level");
    localJceDisplayer.display(this.method, "method");
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.pkgnum, "pkgnum");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      VirusInfo localVirusInfo = (VirusInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localVirusInfo.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.name, localVirusInfo.name);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.timestamp, localVirusInfo.timestamp);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.ostype, localVirusInfo.ostype);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.description, localVirusInfo.description);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.features, localVirusInfo.features);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.safetype, localVirusInfo.safetype);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.advice, localVirusInfo.advice);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.label, localVirusInfo.label);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.optype, localVirusInfo.optype);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.scantype, localVirusInfo.scantype);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.level, localVirusInfo.level);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.method, localVirusInfo.method);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.url, localVirusInfo.url);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.pkgnum, localVirusInfo.pkgnum);
                                  bool1 = false;
                                  if (bool16)
                                    bool1 = true;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
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
    return "QQPIM.VirusInfo";
  }

  public final int getAdvice()
  {
    return this.advice;
  }

  public final String getDescription()
  {
    return this.description;
  }

  public final ArrayList<VirusFeature> getFeatures()
  {
    return this.features;
  }

  public final int getId()
  {
    return this.id;
  }

  public final String getLabel()
  {
    return this.label;
  }

  public final int getLevel()
  {
    return this.level;
  }

  public final int getMethod()
  {
    return this.method;
  }

  public final String getName()
  {
    return this.name;
  }

  public final int getOptype()
  {
    return this.optype;
  }

  public final byte getOstype()
  {
    return this.ostype;
  }

  public final int getPkgnum()
  {
    return this.pkgnum;
  }

  public final int getSafetype()
  {
    return this.safetype;
  }

  public final int getScantype()
  {
    return this.scantype;
  }

  public final int getTimestamp()
  {
    return this.timestamp;
  }

  public final String getUrl()
  {
    return this.url;
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
    this.id = paramJceInputStream.read(this.id, 0, true);
    this.name = paramJceInputStream.readString(1, true);
    this.timestamp = paramJceInputStream.read(this.timestamp, 2, true);
    this.ostype = paramJceInputStream.read(this.ostype, 3, true);
    this.description = paramJceInputStream.readString(4, true);
    if (cache_features == null)
    {
      cache_features = new ArrayList();
      VirusFeature localVirusFeature = new VirusFeature();
      cache_features.add(localVirusFeature);
    }
    setFeatures((ArrayList)paramJceInputStream.read(cache_features, 5, true));
    setSafetype(paramJceInputStream.read(this.safetype, 6, false));
    setAdvice(paramJceInputStream.read(this.advice, 7, false));
    setLabel(paramJceInputStream.readString(8, false));
    setOptype(paramJceInputStream.read(this.optype, 9, false));
    setScantype(paramJceInputStream.read(this.scantype, 10, false));
    setLevel(paramJceInputStream.read(this.level, 11, false));
    setMethod(paramJceInputStream.read(this.method, 12, false));
    setUrl(paramJceInputStream.readString(13, false));
    setPkgnum(paramJceInputStream.read(this.pkgnum, 14, false));
  }

  public final void setAdvice(int paramInt)
  {
    this.advice = paramInt;
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public final void setFeatures(ArrayList<VirusFeature> paramArrayList)
  {
    this.features = paramArrayList;
  }

  public final void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public final void setLabel(String paramString)
  {
    this.label = paramString;
  }

  public final void setLevel(int paramInt)
  {
    this.level = paramInt;
  }

  public final void setMethod(int paramInt)
  {
    this.method = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setOptype(int paramInt)
  {
    this.optype = paramInt;
  }

  public final void setOstype(byte paramByte)
  {
    this.ostype = paramByte;
  }

  public final void setPkgnum(int paramInt)
  {
    this.pkgnum = paramInt;
  }

  public final void setSafetype(int paramInt)
  {
    this.safetype = paramInt;
  }

  public final void setScantype(int paramInt)
  {
    this.scantype = paramInt;
  }

  public final void setTimestamp(int paramInt)
  {
    this.timestamp = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.name, 1);
    paramJceOutputStream.write(this.timestamp, 2);
    paramJceOutputStream.write(this.ostype, 3);
    paramJceOutputStream.write(this.description, 4);
    paramJceOutputStream.write(this.features, 5);
    paramJceOutputStream.write(this.safetype, 6);
    paramJceOutputStream.write(this.advice, 7);
    if (this.label != null)
      paramJceOutputStream.write(this.label, 8);
    paramJceOutputStream.write(this.optype, 9);
    paramJceOutputStream.write(this.scantype, 10);
    paramJceOutputStream.write(this.level, 11);
    paramJceOutputStream.write(this.method, 12);
    if (this.url != null)
      paramJceOutputStream.write(this.url, 13);
    paramJceOutputStream.write(this.pkgnum, 14);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VirusInfo
 * JD-Core Version:    0.6.2
 */
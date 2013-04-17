package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class Category extends JceStruct
  implements Cloneable
{
  static byte[] cache_expand;
  static ArrayList<String> cache_vecSubtitle;
  public int autoalert = 0;
  public int categorytype = 0;
  public int count = 0;
  public String description = "";
  public int endtime = 0;
  public byte[] expand = null;
  public String icon = "";
  public int id = 0;
  public String name = "";
  public int rank = 0;
  public int sign = 0;
  public int source = 1;
  public int state = 0;
  public ArrayList<String> vecSubtitle = null;
  public int viewtimes = 0;
  public String welcome = "";

  static
  {
    if (!Category.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Category()
  {
    setId(this.id);
    setName(this.name);
    setIcon(this.icon);
    setCount(this.count);
    setWelcome(this.welcome);
    setAutoalert(this.autoalert);
    setEndtime(this.endtime);
    setCategorytype(this.categorytype);
    setSource(this.source);
    setVecSubtitle(this.vecSubtitle);
    setDescription(this.description);
    setSign(this.sign);
    setState(this.state);
    setViewtimes(this.viewtimes);
    setExpand(this.expand);
    setRank(this.rank);
  }

  public Category(int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, int paramInt3, int paramInt4, int paramInt5, int paramInt6, ArrayList<String> paramArrayList, String paramString4, int paramInt7, int paramInt8, int paramInt9, byte[] paramArrayOfByte, int paramInt10)
  {
    setId(paramInt1);
    setName(paramString1);
    setIcon(paramString2);
    setCount(paramInt2);
    setWelcome(paramString3);
    setAutoalert(paramInt3);
    setEndtime(paramInt4);
    setCategorytype(paramInt5);
    setSource(paramInt6);
    setVecSubtitle(paramArrayList);
    setDescription(paramString4);
    setSign(paramInt7);
    setState(paramInt8);
    setViewtimes(paramInt9);
    setExpand(paramArrayOfByte);
    setRank(paramInt10);
  }

  public final String className()
  {
    return "QQPIM.Category";
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
    localJceDisplayer.display(this.icon, "icon");
    localJceDisplayer.display(this.count, "count");
    localJceDisplayer.display(this.welcome, "welcome");
    localJceDisplayer.display(this.autoalert, "autoalert");
    localJceDisplayer.display(this.endtime, "endtime");
    localJceDisplayer.display(this.categorytype, "categorytype");
    localJceDisplayer.display(this.source, "source");
    localJceDisplayer.display(this.vecSubtitle, "vecSubtitle");
    localJceDisplayer.display(this.description, "description");
    localJceDisplayer.display(this.sign, "sign");
    localJceDisplayer.display(this.state, "state");
    localJceDisplayer.display(this.viewtimes, "viewtimes");
    localJceDisplayer.display(this.expand, "expand");
    localJceDisplayer.display(this.rank, "rank");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Category localCategory = (Category)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localCategory.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.name, localCategory.name);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.icon, localCategory.icon);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.count, localCategory.count);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.welcome, localCategory.welcome);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.autoalert, localCategory.autoalert);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.endtime, localCategory.endtime);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.categorytype, localCategory.categorytype);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.source, localCategory.source);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.vecSubtitle, localCategory.vecSubtitle);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.description, localCategory.description);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.sign, localCategory.sign);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.state, localCategory.state);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.viewtimes, localCategory.viewtimes);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.expand, localCategory.expand);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.rank, localCategory.rank);
                                    bool1 = false;
                                    if (bool17)
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
  }

  public final String fullClassName()
  {
    return "QQPIM.Category";
  }

  public final int getAutoalert()
  {
    return this.autoalert;
  }

  public final int getCategorytype()
  {
    return this.categorytype;
  }

  public final int getCount()
  {
    return this.count;
  }

  public final String getDescription()
  {
    return this.description;
  }

  public final int getEndtime()
  {
    return this.endtime;
  }

  public final byte[] getExpand()
  {
    return this.expand;
  }

  public final String getIcon()
  {
    return this.icon;
  }

  public final int getId()
  {
    return this.id;
  }

  public final String getName()
  {
    return this.name;
  }

  public final int getRank()
  {
    return this.rank;
  }

  public final int getSign()
  {
    return this.sign;
  }

  public final int getSource()
  {
    return this.source;
  }

  public final int getState()
  {
    return this.state;
  }

  public final ArrayList<String> getVecSubtitle()
  {
    return this.vecSubtitle;
  }

  public final int getViewtimes()
  {
    return this.viewtimes;
  }

  public final String getWelcome()
  {
    return this.welcome;
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
    this.icon = paramJceInputStream.readString(2, true);
    this.count = paramJceInputStream.read(this.count, 3, true);
    this.welcome = paramJceInputStream.readString(4, false);
    this.autoalert = paramJceInputStream.read(this.autoalert, 5, false);
    this.endtime = paramJceInputStream.read(this.endtime, 6, false);
    this.categorytype = paramJceInputStream.read(this.categorytype, 7, false);
    this.source = paramJceInputStream.read(this.source, 8, false);
    if (cache_vecSubtitle == null)
    {
      cache_vecSubtitle = new ArrayList();
      cache_vecSubtitle.add("");
    }
    setVecSubtitle((ArrayList)paramJceInputStream.read(cache_vecSubtitle, 9, false));
    setDescription(paramJceInputStream.readString(10, false));
    setSign(paramJceInputStream.read(this.sign, 11, false));
    setState(paramJceInputStream.read(this.state, 12, false));
    setViewtimes(paramJceInputStream.read(this.viewtimes, 13, false));
    if (cache_expand == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_expand = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    setExpand(paramJceInputStream.read(cache_expand, 14, false));
    setRank(paramJceInputStream.read(this.rank, 15, false));
  }

  public final void setAutoalert(int paramInt)
  {
    this.autoalert = paramInt;
  }

  public final void setCategorytype(int paramInt)
  {
    this.categorytype = paramInt;
  }

  public final void setCount(int paramInt)
  {
    this.count = paramInt;
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public final void setEndtime(int paramInt)
  {
    this.endtime = paramInt;
  }

  public final void setExpand(byte[] paramArrayOfByte)
  {
    this.expand = paramArrayOfByte;
  }

  public final void setIcon(String paramString)
  {
    this.icon = paramString;
  }

  public final void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setRank(int paramInt)
  {
    this.rank = paramInt;
  }

  public final void setSign(int paramInt)
  {
    this.sign = paramInt;
  }

  public final void setSource(int paramInt)
  {
    this.source = paramInt;
  }

  public final void setState(int paramInt)
  {
    this.state = paramInt;
  }

  public final void setVecSubtitle(ArrayList<String> paramArrayList)
  {
    this.vecSubtitle = paramArrayList;
  }

  public final void setViewtimes(int paramInt)
  {
    this.viewtimes = paramInt;
  }

  public final void setWelcome(String paramString)
  {
    this.welcome = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.name, 1);
    paramJceOutputStream.write(this.icon, 2);
    paramJceOutputStream.write(this.count, 3);
    if (this.welcome != null)
      paramJceOutputStream.write(this.welcome, 4);
    paramJceOutputStream.write(this.autoalert, 5);
    paramJceOutputStream.write(this.endtime, 6);
    paramJceOutputStream.write(this.categorytype, 7);
    paramJceOutputStream.write(this.source, 8);
    if (this.vecSubtitle != null)
      paramJceOutputStream.write(this.vecSubtitle, 9);
    if (this.description != null)
      paramJceOutputStream.write(this.description, 10);
    paramJceOutputStream.write(this.sign, 11);
    paramJceOutputStream.write(this.state, 12);
    paramJceOutputStream.write(this.viewtimes, 13);
    if (this.expand != null)
      paramJceOutputStream.write(this.expand, 14);
    paramJceOutputStream.write(this.rank, 15);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Category
 * JD-Core Version:    0.6.2
 */
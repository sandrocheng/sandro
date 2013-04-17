package com.tencent.tmsecure.module.phoneservice;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public final class IpDialProvinceCityList
  implements Serializable
{
  private ArrayList<IpDialProvinceCity> a = new ArrayList();

  public IpDialProvinceCityList()
  {
  }

  public IpDialProvinceCityList(IpDialProvinceCityList paramIpDialProvinceCityList)
  {
    this();
    copyFrom(paramIpDialProvinceCityList);
  }

  public final void add(IpDialProvinceCity paramIpDialProvinceCity)
  {
    if ((paramIpDialProvinceCity != null) && (!existed(paramIpDialProvinceCity)))
      this.a.add(paramIpDialProvinceCity);
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final void copyFrom(IpDialProvinceCityList paramIpDialProvinceCityList)
  {
    Iterator localIterator;
    if (paramIpDialProvinceCityList != null)
    {
      this.a.clear();
      localIterator = paramIpDialProvinceCityList.a.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      IpDialProvinceCity localIpDialProvinceCity = (IpDialProvinceCity)localIterator.next();
      this.a.add(new IpDialProvinceCity(localIpDialProvinceCity));
    }
  }

  public final void copyFrom(ArrayList<IpDialProvinceCity> paramArrayList)
  {
    Iterator localIterator;
    if (paramArrayList != null)
    {
      this.a.clear();
      localIterator = paramArrayList.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      IpDialProvinceCity localIpDialProvinceCity = (IpDialProvinceCity)localIterator.next();
      this.a.add(new IpDialProvinceCity(localIpDialProvinceCity));
    }
  }

  public final boolean existed(IpDialProvinceCity paramIpDialProvinceCity)
  {
    boolean bool;
    if (paramIpDialProvinceCity == null)
      bool = false;
    while (true)
    {
      return bool;
      String str = paramIpDialProvinceCity.getProvince() + paramIpDialProvinceCity.getCity();
      Iterator localIterator = this.a.iterator();
      IpDialProvinceCity localIpDialProvinceCity;
      label101: 
      do
      {
        do
        {
          if (!localIterator.hasNext())
          {
            bool = false;
            break;
          }
          localIpDialProvinceCity = (IpDialProvinceCity)localIterator.next();
          if (localIpDialProvinceCity.getCity().length() != 0)
            break label101;
        }
        while (localIpDialProvinceCity.getProvince().compareTo(paramIpDialProvinceCity.getProvince()) != 0);
        bool = true;
        break;
      }
      while ((localIpDialProvinceCity.getProvince() + localIpDialProvinceCity.getCity()).compareTo(str) != 0);
      bool = true;
    }
  }

  public final IpDialProvinceCity get(int paramInt)
  {
    if (isValidIndex(paramInt));
    for (IpDialProvinceCity localIpDialProvinceCity = new IpDialProvinceCity((IpDialProvinceCity)this.a.get(paramInt)); ; localIpDialProvinceCity = null)
      return localIpDialProvinceCity;
  }

  public final boolean isValidIndex(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.a.size()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String listToString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append('[');
    Iterator localIterator = this.a.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localStringBuilder.append(']');
        return localStringBuilder.toString();
      }
      IpDialProvinceCity localIpDialProvinceCity = (IpDialProvinceCity)localIterator.next();
      localStringBuilder.append(localIpDialProvinceCity.a + localIpDialProvinceCity.b).append(',');
    }
  }

  public final void remove(int paramInt)
  {
    if (isValidIndex(paramInt))
      this.a.remove(paramInt);
  }

  public final int size()
  {
    return this.a.size();
  }

  public final ArrayList<IpDialProvinceCity> toArrayList()
  {
    return new ArrayList(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.IpDialProvinceCityList
 * JD-Core Version:    0.6.2
 */
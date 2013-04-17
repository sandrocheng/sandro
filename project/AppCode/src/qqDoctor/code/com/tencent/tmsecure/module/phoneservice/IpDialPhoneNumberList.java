package com.tencent.tmsecure.module.phoneservice;

import a;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

public final class IpDialPhoneNumberList
  implements Serializable
{
  private ArrayList<IpDialPhoneNumber> a = new ArrayList();

  public IpDialPhoneNumberList()
  {
  }

  public IpDialPhoneNumberList(IpDialPhoneNumberList paramIpDialPhoneNumberList)
  {
    this();
    copyFrom(paramIpDialPhoneNumberList);
  }

  public final void add(IpDialPhoneNumber paramIpDialPhoneNumber)
  {
    if ((paramIpDialPhoneNumber != null) && (!existed(paramIpDialPhoneNumber)))
      this.a.add(paramIpDialPhoneNumber);
  }

  public final void clear()
  {
    this.a.clear();
  }

  public final void copyFrom(IpDialPhoneNumberList paramIpDialPhoneNumberList)
  {
    Iterator localIterator;
    if (paramIpDialPhoneNumberList != null)
    {
      this.a.clear();
      localIterator = paramIpDialPhoneNumberList.a.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      IpDialPhoneNumber localIpDialPhoneNumber = (IpDialPhoneNumber)localIterator.next();
      this.a.add(new IpDialPhoneNumber(localIpDialPhoneNumber));
    }
  }

  public final void copyFrom(ArrayList<IpDialPhoneNumber> paramArrayList)
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
      IpDialPhoneNumber localIpDialPhoneNumber = new IpDialPhoneNumber((IpDialPhoneNumber)localIterator.next());
      if (!existed(localIpDialPhoneNumber))
        this.a.add(localIpDialPhoneNumber);
    }
  }

  public final boolean existed(IpDialPhoneNumber paramIpDialPhoneNumber)
  {
    if (paramIpDialPhoneNumber == null);
    Iterator localIterator;
    for (boolean bool = false; ; bool = false)
    {
      return bool;
      localIterator = this.a.iterator();
      if (localIterator.hasNext())
        break;
    }
    String str1 = ((IpDialPhoneNumber)localIterator.next()).getPhoneNumber();
    String str2 = paramIpDialPhoneNumber.getPhoneNumber();
    int i;
    if ((str1 == null) || (str2 == null))
    {
      if (str1 == null)
        str1 = "";
      if (str2 == null)
        str2 = "";
      if (str1.compareTo(str2) == 0)
        i = 1;
    }
    label91: String str3;
    String str4;
    while (true)
      if (i != 0)
      {
        bool = true;
        break;
        i = 0;
        continue;
        str3 = a.l(str1);
        str4 = a.l(str2);
        if ((str3.length() >= 8) && (str4.length() >= 8))
        {
          if (str3.substring(-8 + str3.length()).compareTo(str4.substring(-8 + str4.length())) == 0)
            i = 1;
          else
            i = 0;
        }
        else
          if (str3.length() < 7)
            break label264;
      }
    label264: for (String str5 = str3.substring(-7 + str3.length()); ; str5 = str3)
    {
      if (str4.length() >= 7);
      for (String str6 = str4.substring(-7 + str4.length()); ; str6 = str4)
      {
        if (str5.compareTo(str6) == 0)
        {
          i = 1;
          break label91;
        }
        i = 0;
        break label91;
        break;
      }
    }
  }

  public final IpDialPhoneNumber get(int paramInt)
  {
    if (isValidIndex(paramInt));
    for (IpDialPhoneNumber localIpDialPhoneNumber = (IpDialPhoneNumber)this.a.get(paramInt); ; localIpDialPhoneNumber = null)
      return localIpDialPhoneNumber;
  }

  public final boolean isValidIndex(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.a.size()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String listToString()
  {
    return this.a.toString();
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

  public final ArrayList<IpDialPhoneNumber> toArrayList()
  {
    return new ArrayList(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.phoneservice.IpDialPhoneNumberList
 * JD-Core Version:    0.6.2
 */
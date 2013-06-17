package com.antivirus.ui.callmessagefilter;

import java.util.Date;

public abstract class i extends d
  implements Comparable
{
  private Date a;
  private boolean b;

  protected i(String paramString1, String paramString2, String paramString3, x paramx, long paramLong, String paramString4, Date paramDate)
  {
    super(paramString1, paramString2, paramString3, paramx, paramLong, paramString4);
    this.a = paramDate;
  }

  public int a(i parami)
  {
    return parami.i().compareTo(this.a);
  }

  public void b(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      boolean bool2 = paramObject instanceof i;
      bool1 = false;
      if (bool2)
        try
        {
          i locali = (i)paramObject;
          bool1 = i().equals(locali.i());
        }
        catch (ClassCastException localClassCastException)
        {
          bool1 = false;
        }
    }
  }

  public Date i()
  {
    return this.a;
  }

  public boolean j()
  {
    return this.b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.i
 * JD-Core Version:    0.6.2
 */
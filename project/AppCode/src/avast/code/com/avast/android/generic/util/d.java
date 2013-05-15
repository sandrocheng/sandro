package com.avast.android.generic.util;

import java.lang.ref.WeakReference;

public class d extends WeakReference
{
  public d(Object paramObject)
  {
    super(paramObject);
  }

  public boolean equals(Object paramObject)
  {
    if (((paramObject instanceof WeakReference)) && (get() != null));
    for (boolean bool = get().equals(((WeakReference)paramObject).get()); ; bool = false)
      return bool;
  }

  public int hashCode()
  {
    if (get() != null);
    for (int i = get().hashCode(); ; i = super.hashCode())
      return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.d
 * JD-Core Version:    0.6.2
 */
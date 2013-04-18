package cn.com.wali.zft;

import java.util.Map.Entry;

final class Pair
  implements Map.Entry
{
  Object key;
  Object value;

  public Pair(Object paramObject1, Object paramObject2)
  {
    this.key = paramObject1;
    this.value = paramObject2;
  }

  public final Object getKey()
  {
    return this.key;
  }

  public final Object getValue()
  {
    return this.value;
  }

  public final Object setValue(Object paramObject)
  {
    this.value = paramObject;
    return paramObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cn.com.wali.zft.Pair
 * JD-Core Version:    0.6.2
 */
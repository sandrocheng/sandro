package com.b.a;

import java.io.Serializable;
import java.util.Collections;

public abstract class ef extends d
  implements Serializable
{
  private static final long a = 1L;

  protected ef()
  {
  }

  protected ef(byte paramByte)
  {
  }

  private static en a(ex paramex1, ex paramex2, er paramer, int paramInt, gq paramgq, boolean paramBoolean)
  {
    return new en(paramex1, Collections.emptyList(), paramex2, new em(paramer, paramInt, paramgq, true, paramBoolean));
  }

  private static en a(ex paramex1, Object paramObject, ex paramex2, er paramer, int paramInt, gq paramgq)
  {
    return new en(paramex1, paramObject, paramex2, new em(paramer, paramInt, paramgq, false, false));
  }

  private Object e()
  {
    return new eo(this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ef
 * JD-Core Version:    0.6.2
 */
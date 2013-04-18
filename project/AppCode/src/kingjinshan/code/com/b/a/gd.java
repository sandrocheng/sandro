package com.b.a;

final class gd
{
  private final Appendable a;
  private final StringBuilder b = new StringBuilder();
  private boolean c = true;

  private gd(Appendable paramAppendable, byte paramByte)
  {
    this.a = paramAppendable;
  }

  private void a(CharSequence paramCharSequence, int paramInt)
  {
    if (paramInt == 0);
    while (true)
    {
      return;
      if (this.c)
      {
        this.c = false;
        this.a.append(this.b);
      }
      this.a.append(paramCharSequence);
    }
  }

  public final void a()
  {
    this.b.append("  ");
  }

  public final void a(CharSequence paramCharSequence)
  {
    int i = 0;
    int j = paramCharSequence.length();
    int k = 0;
    while (i < j)
    {
      if (paramCharSequence.charAt(i) == '\n')
      {
        a(paramCharSequence.subSequence(k, j), 1 + (i - k));
        k = i + 1;
        this.c = true;
      }
      i++;
    }
    a(paramCharSequence.subSequence(k, j), j - k);
  }

  public final void b()
  {
    int i = this.b.length();
    if (i == 0)
      throw new IllegalArgumentException(" Outdent() without matching Indent().");
    this.b.delete(i - 2, i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.gd
 * JD-Core Version:    0.6.2
 */
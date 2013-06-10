package android.support.v4.a;

public final class a
{
  public int a;
  public b b;
  public boolean c;
  public boolean d;
  public boolean e;
  public boolean f;

  public final void a(b paramb)
  {
    if (this.b == null)
      throw new IllegalStateException("No listener register");
    if (this.b != paramb)
      throw new IllegalArgumentException("Attempting to unregister the wrong listener");
    this.b = null;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    android.support.v4.c.a.a(this, localStringBuilder);
    localStringBuilder.append(" id=");
    localStringBuilder.append(this.a);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.support.v4.a.a
 * JD-Core Version:    0.6.2
 */
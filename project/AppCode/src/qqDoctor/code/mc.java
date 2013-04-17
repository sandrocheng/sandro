public final class mc<F, S>
{
  public F a;
  public S b;

  public mc(F paramF, S paramS)
  {
    this.a = paramF;
    this.b = paramS;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool = true;
    if (paramObject == this);
    while (true)
    {
      return bool;
      if (!(paramObject instanceof mc))
        bool = false;
      else
        try
        {
          mc localmc = (mc)paramObject;
          if ((!this.a.equals(localmc.a)) || (!this.b.equals(localmc.b)))
            bool = false;
        }
        catch (ClassCastException localClassCastException)
        {
          bool = false;
        }
    }
  }

  public final int hashCode()
  {
    return 31 * (527 + this.a.hashCode()) + this.b.hashCode();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mc
 * JD-Core Version:    0.6.2
 */
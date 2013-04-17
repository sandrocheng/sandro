package com.tencent.tmsecure.module.aresengine;

public abstract class DataFilter<T extends TelephonyEntity>
{
  private Object a = new Object();
  private FilterConfig b;
  private DataHandler c;

  public final void a()
  {
    synchronized (this.a)
    {
      this.c = null;
      return;
    }
  }

  public final void a(DataHandler paramDataHandler)
  {
    synchronized (this.a)
    {
      this.c = paramDataHandler;
      return;
    }
  }

  public abstract FilterConfig defalutFilterConfig();

  public final FilterResult filter(T paramT, Object[] paramArrayOfObject)
  {
    prepare(paramT, paramArrayOfObject);
    FilterResult localFilterResult = onFiltering(paramT, paramArrayOfObject);
    onFiltered(paramT, localFilterResult, paramArrayOfObject);
    synchronized (this.a)
    {
      if (this.c != null)
        this.c.sendMessage(localFilterResult);
      return localFilterResult;
    }
  }

  public final FilterConfig getConfig()
  {
    try
    {
      FilterConfig localFilterConfig = this.b;
      return localFilterConfig;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onFiltered(T paramT, FilterResult paramFilterResult, Object[] paramArrayOfObject)
  {
  }

  protected abstract FilterResult onFiltering(T paramT, Object[] paramArrayOfObject);

  protected void prepare(T paramT, Object[] paramArrayOfObject)
  {
  }

  public final void setConfig(FilterConfig paramFilterConfig)
  {
    if (paramFilterConfig == null)
      try
      {
        throw new NullPointerException("the filter's config can not be null");
      }
      finally
      {
      }
    this.b = paramFilterConfig;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.DataFilter
 * JD-Core Version:    0.6.2
 */
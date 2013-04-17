package com.tencent.feedback.common.strategy;

public class SecurityStrategyBean
{
  public static final int DEFAULT_ENCRYALGORITHM = -1;
  public static final String DEFAULT_ENCRYKEY = "*^@K#K@!";
  public static final String DEFAULT_PUBENCRYKEY = "S(@L@L@)";
  public static final int DEFAULT_ZIPALGORITHM = -1;
  private int encryAlgorithm = -1;
  private String encryKey = "*^@K#K@!";
  private String pubEncryKey = "S(@L@L@)";
  private int zipAlgorithm = -1;

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if (paramObject == null)
      bool = false;
    while (true)
    {
      return bool;
      try
      {
        if (SecurityStrategyBean.class.isInstance(paramObject))
        {
          SecurityStrategyBean localSecurityStrategyBean = (SecurityStrategyBean)SecurityStrategyBean.class.cast(paramObject);
          if (localSecurityStrategyBean.encryAlgorithm != this.encryAlgorithm)
          {
            bool = false;
            continue;
          }
          if (!localSecurityStrategyBean.encryKey.equals(this.encryKey))
          {
            bool = false;
            continue;
          }
          if (!localSecurityStrategyBean.pubEncryKey.equals(this.pubEncryKey))
          {
            bool = false;
            continue;
          }
          int i = localSecurityStrategyBean.zipAlgorithm;
          int j = this.zipAlgorithm;
          if (i != j)
          {
            bool = false;
            continue;
          }
          bool = true;
          continue;
        }
        bool = false;
      }
      finally
      {
      }
    }
  }

  public int getEncryAlgorithm()
  {
    try
    {
      int i = this.encryAlgorithm;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getEncryKey()
  {
    try
    {
      String str = this.encryKey;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getPubEncryKey()
  {
    try
    {
      String str = this.pubEncryKey;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getZipAlgorithm()
  {
    try
    {
      int i = this.zipAlgorithm;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setEncryAlgorithm(int paramInt)
  {
    try
    {
      this.encryAlgorithm = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setEncryKey(String paramString)
  {
    try
    {
      this.encryKey = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setPubEncryKey(String paramString)
  {
    try
    {
      this.pubEncryKey = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setZipAlgorithm(int paramInt)
  {
    try
    {
      this.zipAlgorithm = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String toString()
  {
    try
    {
      String str = "encryKey:" + this.encryKey + "\n" + "encryAlgorithm:" + this.encryAlgorithm + "\n" + "pubEncryKey:" + this.pubEncryKey + "\n" + "zipAlgorithm:" + this.zipAlgorithm + "\n";
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.strategy.SecurityStrategyBean
 * JD-Core Version:    0.6.2
 */
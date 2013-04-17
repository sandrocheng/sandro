package com.tencent.tmsecure.module.aresengine;

import java.util.ArrayList;
import java.util.List;

public abstract interface IKeyWordDao
{
  public abstract boolean contains(String paramString);

  public abstract ArrayList<String> getAll();

  public abstract void setAll(List<String> paramList);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.IKeyWordDao
 * JD-Core Version:    0.6.2
 */
package com.tencent.tmsecure.module.networkload;

import java.util.List;

public abstract interface INetworkLoadTaskDao<T extends NetworkLoadTask>
{
  public abstract boolean delete(T paramT);

  public abstract boolean delete(List<T> paramList);

  public abstract List<T> getAll();

  public abstract long insert(T paramT);

  public abstract boolean insert(List<T> paramList);

  public abstract boolean update(T paramT);

  public abstract boolean update(List<T> paramList, int paramInt);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.networkload.INetworkLoadTaskDao
 * JD-Core Version:    0.6.2
 */
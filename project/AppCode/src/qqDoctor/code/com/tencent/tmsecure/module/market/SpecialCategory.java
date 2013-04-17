package com.tencent.tmsecure.module.market;

import java.util.ArrayList;

public class SpecialCategory
{
  public CategoryEx categoryEx;
  public ArrayList<SoftSimpleInfoEx> softSimpleInfoExList;

  public CategoryEx getCategoryEx()
  {
    return this.categoryEx;
  }

  public ArrayList<SoftSimpleInfoEx> getSoftSimpleInfoExList()
  {
    return this.softSimpleInfoExList;
  }

  public void setCategoryEx(CategoryEx paramCategoryEx)
  {
    this.categoryEx = paramCategoryEx;
  }

  public void setSoftSimpleInfoExList(ArrayList<SoftSimpleInfoEx> paramArrayList)
  {
    this.softSimpleInfoExList = paramArrayList;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.market.SpecialCategory
 * JD-Core Version:    0.6.2
 */
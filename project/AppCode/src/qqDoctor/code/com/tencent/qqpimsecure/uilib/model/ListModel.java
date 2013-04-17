package com.tencent.qqpimsecure.uilib.model;

import java.util.ArrayList;
import java.util.List;

public class ListModel<T>
{
  public static final int STYLE_FOOTER = 1;
  public static final int STYLE_HEADER_FOOTER;
  private boolean isShowListNumber = true;
  private List<T> mDataList;
  private String mHeaderLabel = null;
  private int mStyle = 1;

  public ListModel(List<T> paramList, String paramString, int paramInt)
  {
    this.mDataList = paramList;
    this.mHeaderLabel = paramString;
    this.mStyle = paramInt;
  }

  public ListModel(List<T> paramList, String paramString, int paramInt, boolean paramBoolean)
  {
    this.mDataList = paramList;
    this.mHeaderLabel = paramString;
    this.mStyle = paramInt;
    this.isShowListNumber = paramBoolean;
  }

  private List<ItemModel> getListHeaderAndFooter()
  {
    int i = 0;
    ArrayList localArrayList = new ArrayList();
    String str = this.mHeaderLabel + getListNumberLabel();
    synchronized (this.mDataList)
    {
      int j = this.mDataList.size();
      while (i < j)
      {
        ItemModel localItemModel = new ItemModel();
        if (i == 0)
        {
          if (this.mHeaderLabel != null)
            localItemModel.setHeaderLabel(str);
          localItemModel.setItemStyle(0);
          localArrayList.add(localItemModel);
          i++;
        }
        else
        {
          localItemModel.setHeaderLabel(str);
          localItemModel.setItemStyle(1);
        }
      }
    }
    return localArrayList;
  }

  private String getListNumberLabel()
  {
    if (this.isShowListNumber);
    for (String str = "(" + this.mDataList.size() + ")"; ; str = "")
      return str;
  }

  public List<T> getDataList()
  {
    return this.mDataList;
  }

  public String getHeaderLabel()
  {
    return this.mHeaderLabel;
  }

  public List<ItemModel> getItemModelList()
  {
    if (this.mStyle == 0);
    for (List localList = getListHeaderAndFooter(); ; localList = getListMiddle())
      return localList;
  }

  public List<ItemModel> getListMiddle()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (this.mDataList)
    {
      for (int i = this.mDataList.size(); i > 0; i--)
        localArrayList.add(new ItemModel());
      return localArrayList;
    }
  }

  public int getStyle()
  {
    return this.mStyle;
  }

  public boolean isShowListNumber()
  {
    return this.isShowListNumber;
  }

  public void setDataList(List<T> paramList)
  {
    this.mDataList = paramList;
  }

  public void setHeaderLabel(String paramString)
  {
    this.mHeaderLabel = paramString;
  }

  public void setShowListNumber(boolean paramBoolean)
  {
    this.isShowListNumber = paramBoolean;
  }

  public void setStyle(int paramInt)
  {
    this.mStyle = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.model.ListModel
 * JD-Core Version:    0.6.2
 */
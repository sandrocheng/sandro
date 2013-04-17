package com.tencent.lbsapi.model;

import java.util.ArrayList;
import java.util.List;

public class QLBSPoiInfoBatch
{
  private List a = new ArrayList();
  private int b = 0;
  private QLBSGPSInfo c = null;

  public QLBSGPSInfo getGpsInfo()
  {
    return this.c;
  }

  public List getPoiList()
  {
    return this.a;
  }

  public int getTotalNum()
  {
    return this.b;
  }

  public void setGpsInfo(QLBSGPSInfo paramQLBSGPSInfo)
  {
    this.c = paramQLBSGPSInfo;
  }

  public void setPoiList(List paramList)
  {
    this.a = paramList;
  }

  public void setTotalNum(int paramInt)
  {
    this.b = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.lbsapi.model.QLBSPoiInfoBatch
 * JD-Core Version:    0.6.2
 */
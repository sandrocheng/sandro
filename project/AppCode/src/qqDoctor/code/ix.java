import com.tencent.lbsapi.QLBSNotification;
import com.tencent.lbsapi.QLBSService;
import com.tencent.lbsapi.model.QLBSPoiInfoBatch;
import com.tencent.lbsapi.model.QLBSPosition;

final class ix
  implements QLBSNotification
{
  ix(iv paramiv)
  {
  }

  public final void onLocationNotification(int paramInt)
  {
    if (paramInt != 1)
    {
      iv.d(this.a);
      new StringBuilder("^^QLBS 1result=").append(paramInt).toString();
      iv.e(this.a);
    }
    while (true)
    {
      return;
      String str = dc.a(iv.a(this.a));
      if (str == null)
        str = "";
      iv.c(this.a).requestGetCurrentPosition(101, str, 3);
    }
  }

  public final void onResponseError(int paramInt1, int paramInt2, String paramString)
  {
    iv.d(this.a);
    new StringBuilder("^^QLBS error=").append(paramInt1).append(paramInt2).append(paramString).toString();
    iv.e(this.a);
  }

  public final void onResponseGetNearPoiList(int paramInt, QLBSPoiInfoBatch paramQLBSPoiInfoBatch)
  {
  }

  public final void onResponseGetPosition(int paramInt, QLBSPosition paramQLBSPosition)
  {
    iv.e(this.a);
    iv.a(this.a, paramQLBSPosition);
  }

  public final void onResponseSearchNearPoiList(int paramInt, QLBSPoiInfoBatch paramQLBSPoiInfoBatch)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ix
 * JD-Core Version:    0.6.2
 */
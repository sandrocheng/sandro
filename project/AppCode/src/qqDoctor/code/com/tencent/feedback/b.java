package com.tencent.feedback;

import android.util.DisplayMetrics;
import java.util.HashMap;
import java.util.Map;

final class b
  implements Runnable
{
  b(UserActionRecord paramUserActionRecord, DisplayMetrics paramDisplayMetrics)
  {
  }

  public final void run()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("density", "" + this.a.density);
    localHashMap.put("widthPixels", "" + this.a.widthPixels);
    localHashMap.put("heightPixels", "" + this.a.heightPixels);
    localHashMap.put("scaledDensity", "" + this.a.scaledDensity);
    localHashMap.put("xdpi", "" + this.a.xdpi);
    localHashMap.put("ydpi", "" + this.a.ydpi);
    UserActionRecord.onUserAction("rqd_display", true, 0L, 0L, localHashMap, false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.b
 * JD-Core Version:    0.6.2
 */
package com.a.a;

import android.os.Handler;
import android.os.Message;
import android.view.animation.AnimationUtils;
import java.util.ArrayList;

class aq extends Handler
{
  public void handleMessage(Message paramMessage)
  {
    ArrayList localArrayList1 = (ArrayList)ak.h().get();
    ArrayList localArrayList2 = (ArrayList)ak.i().get();
    ArrayList localArrayList5;
    int i;
    switch (paramMessage.what)
    {
    default:
      return;
    case 0:
      localArrayList5 = (ArrayList)ak.j().get();
      if ((localArrayList1.size() > 0) || (localArrayList2.size() > 0))
        i = 0;
      break;
    case 1:
    }
    while (true)
      if (localArrayList5.size() > 0)
      {
        ArrayList localArrayList6 = (ArrayList)localArrayList5.clone();
        localArrayList5.clear();
        int i7 = localArrayList6.size();
        int i8 = 0;
        if (i8 < i7)
        {
          ak localak4 = (ak)localArrayList6.get(i8);
          if (ak.a(localak4) == 0L)
            ak.b(localak4);
          while (true)
          {
            i8++;
            break;
            localArrayList2.add(localak4);
          }
          i = 1;
        }
      }
      else
      {
        long l = AnimationUtils.currentAnimationTimeMillis();
        ArrayList localArrayList3 = (ArrayList)ak.k().get();
        ArrayList localArrayList4 = (ArrayList)ak.l().get();
        int j = localArrayList2.size();
        for (int k = 0; k < j; k++)
        {
          ak localak3 = (ak)localArrayList2.get(k);
          if (ak.a(localak3, l))
            localArrayList3.add(localak3);
        }
        int m = localArrayList3.size();
        if (m > 0)
        {
          for (int i6 = 0; i6 < m; i6++)
          {
            ak localak2 = (ak)localArrayList3.get(i6);
            ak.b(localak2);
            ak.a(localak2, true);
            localArrayList2.remove(localak2);
          }
          localArrayList3.clear();
        }
        int n = localArrayList1.size();
        int i1 = 0;
        if (i1 < n)
        {
          ak localak1 = (ak)localArrayList1.get(i1);
          if (localak1.d(l))
            localArrayList4.add(localak1);
          int i4;
          if (localArrayList1.size() == n)
            i4 = i1 + 1;
          int i3;
          for (int i5 = n; ; i5 = i3)
          {
            n = i5;
            i1 = i4;
            break;
            i3 = n - 1;
            localArrayList4.remove(localak1);
            i4 = i1;
          }
        }
        if (localArrayList4.size() > 0)
        {
          for (int i2 = 0; i2 < localArrayList4.size(); i2++)
            ak.c((ak)localArrayList4.get(i2));
          localArrayList4.clear();
        }
        if ((i == 0) || ((localArrayList1.isEmpty()) && (localArrayList2.isEmpty())))
          break;
        sendEmptyMessageDelayed(1, Math.max(0L, ak.m() - (AnimationUtils.currentAnimationTimeMillis() - l)));
        break;
        i = 1;
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.aq
 * JD-Core Version:    0.6.2
 */
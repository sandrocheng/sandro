package com.tencent.qqpimsecure.uilib.view.deskassistance;

import abu.a;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import kw;
import lv;
import mp;

class ExpandedTaskManagerWindow$TaskManagerDataAdapter$2
  implements abu.a
{
  ExpandedTaskManagerWindow$TaskManagerDataAdapter$2(ExpandedTaskManagerWindow.TaskManagerDataAdapter paramTaskManagerDataAdapter)
  {
  }

  public void onTaskFinish(mp parammp)
  {
    lv locallv = (lv)parammp;
    ExpandedTaskManagerWindow.RunningAppTask localRunningAppTask = (ExpandedTaskManagerWindow.RunningAppTask)locallv.h;
    Drawable localDrawable = locallv.f;
    Bitmap localBitmap = null;
    if (localDrawable != null)
    {
      boolean bool = localDrawable instanceof BitmapDrawable;
      localBitmap = null;
      if (bool)
        localBitmap = ((BitmapDrawable)localDrawable).getBitmap();
    }
    if ((localBitmap != null) && (!localBitmap.isRecycled()))
      localRunningAppTask.setIcon(localDrawable);
    ExpandedTaskManagerWindow.TaskManagerDataAdapter.access$600(this.this$1, localRunningAppTask.mAppInfo.getPackageName());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ExpandedTaskManagerWindow.TaskManagerDataAdapter.2
 * JD-Core Version:    0.6.2
 */
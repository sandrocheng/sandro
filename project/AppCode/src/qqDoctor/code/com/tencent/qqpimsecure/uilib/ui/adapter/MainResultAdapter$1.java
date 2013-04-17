package com.tencent.qqpimsecure.uilib.ui.adapter;

import abu.a;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.model.SoftResultModel;
import java.util.List;
import lv;
import mp;

class MainResultAdapter$1
  implements abu.a
{
  MainResultAdapter$1(MainResultAdapter paramMainResultAdapter, int paramInt)
  {
  }

  public void onTaskFinish(mp parammp)
  {
    if (parammp != null)
    {
      lv locallv = (lv)parammp;
      ImageView localImageView = (ImageView)MainResultAdapter.access$000(this.this$0).findViewWithTag(locallv.d);
      Drawable localDrawable = locallv.f;
      if ((localImageView != null) && (localDrawable != null))
      {
        Bitmap localBitmap = null;
        if (localDrawable != null)
        {
          boolean bool = localDrawable instanceof BitmapDrawable;
          localBitmap = null;
          if (bool)
            localBitmap = ((BitmapDrawable)localDrawable).getBitmap();
        }
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
        {
          localImageView.setImageDrawable(localDrawable);
          if (this.val$position < MainResultAdapter.access$100(this.this$0).size())
            ((SoftResultModel)MainResultAdapter.access$100(this.this$0).get(this.val$position)).setIcon(localDrawable);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter.1
 * JD-Core Version:    0.6.2
 */
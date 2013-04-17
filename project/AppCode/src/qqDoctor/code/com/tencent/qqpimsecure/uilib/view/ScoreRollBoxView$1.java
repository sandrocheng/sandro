package com.tencent.qqpimsecure.uilib.view;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;

class ScoreRollBoxView$1 extends Handler
{
  ScoreRollBoxView$1(ScoreRollBoxView paramScoreRollBoxView)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    while (true)
    {
      synchronized (this.this$0)
      {
        switch (paramMessage.what)
        {
        default:
          return;
        case 1:
          if (ScoreRollBoxView.access$000(this.this$0))
          {
            this.this$0.invalidate();
            ScoreRollBoxView.access$120(this.this$0, ScoreRollBoxView.access$200(this.this$0));
            if (ScoreRollBoxView.access$100(this.this$0) <= ScoreRollBoxView.access$300(this.this$0))
              ScoreRollBoxView.access$102(this.this$0, -ScoreRollBoxView.access$400(this.this$0).getHeight() / 10 / 4);
            ScoreRollBoxView.access$520(this.this$0, ScoreRollBoxView.access$200(this.this$0));
            if (ScoreRollBoxView.access$500(this.this$0) <= ScoreRollBoxView.access$300(this.this$0))
              ScoreRollBoxView.access$502(this.this$0, -ScoreRollBoxView.access$400(this.this$0).getHeight() / 10 / 4);
            ScoreRollBoxView.access$620(this.this$0, ScoreRollBoxView.access$200(this.this$0));
            if (ScoreRollBoxView.access$600(this.this$0) <= ScoreRollBoxView.access$300(this.this$0))
              ScoreRollBoxView.access$602(this.this$0, -ScoreRollBoxView.access$400(this.this$0).getHeight() / 10 / 4);
            ScoreRollBoxView.access$700(this.this$0).sendEmptyMessageDelayed(1, 0L);
          }
          break;
        case 2:
        }
      }
      if (ScoreRollBoxView.access$800(this.this$0))
      {
        this.this$0.invalidate();
        if (ScoreRollBoxView.access$900(this.this$0) > 0)
        {
          ScoreRollBoxView.access$120(this.this$0, ScoreRollBoxView.access$200(this.this$0));
          if (ScoreRollBoxView.access$100(this.this$0) <= ScoreRollBoxView.access$300(this.this$0))
            ScoreRollBoxView.access$102(this.this$0, -ScoreRollBoxView.access$400(this.this$0).getHeight() / 10 / 4);
          ScoreRollBoxView.access$910(this.this$0);
          if (ScoreRollBoxView.access$900(this.this$0) == 0)
          {
            int k = ScoreRollBoxView.access$1000(this.this$0) / 100;
            ScoreRollBoxView.access$102(this.this$0, -k * ScoreRollBoxView.access$400(this.this$0).getHeight() / 10);
          }
          ScoreRollBoxView.access$700(this.this$0).sendEmptyMessageDelayed(2, 0L);
        }
        if (ScoreRollBoxView.access$1100(this.this$0) > 0)
        {
          ScoreRollBoxView.access$520(this.this$0, ScoreRollBoxView.access$200(this.this$0));
          if (ScoreRollBoxView.access$500(this.this$0) <= ScoreRollBoxView.access$300(this.this$0))
            ScoreRollBoxView.access$502(this.this$0, -ScoreRollBoxView.access$400(this.this$0).getHeight() / 10 / 4);
          ScoreRollBoxView.access$1110(this.this$0);
          if (ScoreRollBoxView.access$1100(this.this$0) == 0)
          {
            int j = ScoreRollBoxView.access$1000(this.this$0) % 100 / 10;
            ScoreRollBoxView.access$502(this.this$0, -j * ScoreRollBoxView.access$400(this.this$0).getHeight() / 10);
          }
        }
        if (ScoreRollBoxView.access$1200(this.this$0) > 0)
        {
          ScoreRollBoxView.access$620(this.this$0, ScoreRollBoxView.access$200(this.this$0));
          if (ScoreRollBoxView.access$600(this.this$0) <= ScoreRollBoxView.access$300(this.this$0))
            ScoreRollBoxView.access$602(this.this$0, -ScoreRollBoxView.access$400(this.this$0).getHeight() / 10 / 4);
          ScoreRollBoxView.access$1210(this.this$0);
          if (ScoreRollBoxView.access$1200(this.this$0) == 0)
          {
            int i = ScoreRollBoxView.access$1000(this.this$0) % 10;
            ScoreRollBoxView.access$602(this.this$0, -i * ScoreRollBoxView.access$400(this.this$0).getHeight() / 10);
          }
        }
        while (true)
        {
          ScoreRollBoxView.access$700(this.this$0).sendEmptyMessageDelayed(1, 0L);
          break;
          ScoreRollBoxView.access$802(this.this$0, false);
        }
        this.this$0.invalidate();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ScoreRollBoxView.1
 * JD-Core Version:    0.6.2
 */
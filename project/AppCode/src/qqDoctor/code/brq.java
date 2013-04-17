import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ResultModel;
import com.tencent.qqpimsecure.uilib.model.SoftResultModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import java.util.List;

final class brq extends Handler
{
  brq(brp parambrp)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 100;
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    case 2:
    case 3:
    case 6:
    case 8:
    default:
    case 1:
    case 4:
    case 5:
    case 7:
    case 9:
    case 10:
      while (true)
      {
        return;
        ProgressBarView localProgressBarView = brp.a(this.a);
        if (paramMessage.arg1 > i);
        while (true)
        {
          localProgressBarView.setProgressWithAnim(i);
          break;
          i = paramMessage.arg1;
        }
        Object localObject = paramMessage.obj;
        if ((localObject instanceof TextView))
        {
          TextView localTextView = (TextView)localObject;
          if (paramMessage.getData() != null)
            localTextView.setText(paramMessage.getData().getCharSequence("data"));
          if (paramMessage.arg1 >= 0)
            localTextView.setVisibility(paramMessage.arg1);
          if (paramMessage.arg2 >= 0)
          {
            localTextView.setTextColor(paramMessage.arg2);
            continue;
            brp.c(this.a).startAnimation(brp.b(this.a));
            sendEmptyMessageDelayed(5, 5000L);
            continue;
            brp.d(this.a);
            continue;
            brp.e(this.a);
            continue;
            brp.f(this.a);
            if (brp.g(this.a))
              brp.a(this.a, brp.h(this.a), brp.i(this.a));
          }
        }
      }
    case 11:
      if (paramMessage.getData() == null)
        break;
    case 12:
    case 13:
    case 14:
    case 15:
    }
    for (String str = paramMessage.getData().getString("msg_virus_text"); ; str = null)
    {
      brp.a(this.a, str);
      break;
      brp.j(this.a);
      break;
      brp.k(this.a);
      break;
      Bundle localBundle2 = paramMessage.getData();
      int j = brp.a(localBundle2.getInt("SAVE_ICON"));
      if (j > 0);
      for (Drawable localDrawable = brp.l(this.a).getResources().getDrawable(j); ; localDrawable = null)
      {
        brp.m(this.a).add(new ResultModel(0, localDrawable, localBundle2.getString("MESSAGE"), localBundle2.getInt("COLOR"), (int)localBundle2.getLong("COUNT")));
        brp.n(this.a).setDataList(brp.m(this.a));
        brp.n(this.a).notifyDataSetChanged();
        break;
      }
      Bundle localBundle1 = paramMessage.getData();
      brp.m(this.a).add(new SoftResultModel(1, (Drawable)paramMessage.obj, localBundle1.getInt("MESSAGE_DRAWABLE_TYPE"), localBundle1.getString("MESSAGE_DRAWABLE_VALUE"), localBundle1.getString("MESSAGE"), localBundle1.getInt("SAVE_ICON")));
      brp.n(this.a).setDataList(brp.m(this.a));
      brp.n(this.a).notifyDataSetChanged();
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brq
 * JD-Core Version:    0.6.2
 */
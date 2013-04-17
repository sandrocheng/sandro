import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.model.ResultModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.MainResultAdapter;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import java.util.List;

final class bqo extends Handler
{
  bqo(bqb parambqb)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 4:
    default:
      bqb.t(this.a).setDataList(bqb.m(this.a));
      bqb.t(this.a).notifyDataSetChanged();
      if (bqb.u(this.a) < 100)
        bqb.i(this.a).setProgressWithAnim(bqb.u(this.a));
      break;
    case 2:
    case 1:
    case 3:
    case 6:
    case 5:
    case 7:
    case 8:
    case 10:
    case 9:
    }
    while (true)
    {
      bqb.B(this.a);
      return;
      bqb.m(this.a).add(new ResultModel(0, 2130837907, 2131429731, paramMessage.arg1));
      bqb.a(this.a, paramMessage.arg1);
      bqb.b(this.a, 0);
      break;
      kw localkw3 = (kw)paramMessage.obj;
      bqb.m(this.a).add(new ResultModel(1, localkw3.getIcon(), localkw3.getAppName(), bqb.n(this.a).getString(2131429723)));
      bqb.b(this.a, 40 * paramMessage.arg1 / bqb.o(this.a));
      bqb.c(this.a, paramMessage.arg1);
      break;
      bqb.b(this.a, 40);
      break;
      bqb.m(this.a).add(new ResultModel(0, 2130837907, 2131429735, paramMessage.arg1));
      bqb.a(this.a, paramMessage.arg1);
      bqb.b(this.a, 40);
      break;
      kw localkw2 = (kw)paramMessage.obj;
      if (paramMessage.arg2 == 0);
      for (String str = bqb.p(this.a).getString(2131429724); ; str = bqb.q(this.a).getString(2131429725))
      {
        bqb.m(this.a).add(new ResultModel(1, localkw2.getIcon(), localkw2.getAppName(), str));
        bqb.b(this.a, 40 + 20 * paramMessage.arg1 / bqb.o(this.a));
        if (paramMessage.arg2 < 0)
          break;
        bqb.r(this.a);
        break;
      }
      bqb.b(this.a, 60);
      break;
      bqb.m(this.a).add(new ResultModel(0, 2130837907, 2131428002, paramMessage.arg1));
      bqb.b(this.a, 98);
      break;
      kw localkw1 = (kw)paramMessage.obj;
      bqb.m(this.a).add(new ResultModel(1, localkw1.getIcon(), localkw1.getAppName(), bqb.s(this.a).getString(2131429727)));
      bqb.a(this.a, localkw1.I());
      break;
      bqb.b(this.a, 100);
      break;
      bqb.i(this.a).setProgressWithAnim(100, new bqp(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqo
 * JD-Core Version:    0.6.2
 */
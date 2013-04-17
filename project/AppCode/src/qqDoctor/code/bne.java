import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;
import com.tencent.tmsecure.utils.WifiUtil;

final class bne extends Handler
{
  bne(bnd parambnd)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 19:
    case 1:
    case 2:
    case 3:
    case 9:
    case 10:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    }
    while (true)
    {
      return;
      bnd.a(this.a).show();
      continue;
      bnd.b(this.a);
      continue;
      bnd.c(this.a);
      bnd.a(this.a).dismiss();
      continue;
      bnd.d(this.a);
      continue;
      bnd.e(this.a);
      continue;
      bnd.f(this.a);
      continue;
      a.a((Activity)bnd.g(this.a), paramMessage.arg1, this.a);
      bnd.h(this.a).setVisibility(0);
      continue;
      ha.a(bnd.i(this.a), (String)paramMessage.obj);
      continue;
      bnd.j(this.a);
      continue;
      bnd.a(this.a, new Dialog(bnd.k(this.a)));
      bnd.l(this.a).addProgressDialog();
      bnd.l(this.a).setMessage((String)paramMessage.obj);
      bnd.l(this.a).show();
      continue;
      bnd.l(this.a).dismiss();
      continue;
      bnd.m(this.a);
      continue;
      int j = (int)(100.0F * bnd.n(this.a).mProgress);
      if (j <= 0)
        j = 0;
      bnd.a(this.a, j, true);
      bnd.m(this.a);
      continue;
      int i = (int)(100.0F * bnd.n(this.a).mProgress);
      if (i > 0)
      {
        bnd.a(this.a, i, false);
        continue;
        bnd.a(this.a, 100, false);
        continue;
        bnd.o(this.a).stopAnimation();
        bnd.m(this.a);
        continue;
        bnd.o(this.a).stopAnimation();
        bnd.m(this.a);
        if (bnd.n(this.a).mErrorCode == -1063)
        {
          a.b(this.a.getContext(), WifiUtil.sRedirectLocation);
        }
        else
        {
          PhoneInfoUtil.SizeInfo localSizeInfo = new PhoneInfoUtil.SizeInfo();
          PhoneInfoUtil.getStorageCardSize(localSizeInfo);
          continue;
          bnd.n(this.a).mState = -2;
          bnd.n(this.a).mCurrentSize = 0L;
          bnd.n(this.a).mProgress = 0.0F;
          bnd.a(this.a, 0, false);
          bnd.f(this.a);
          continue;
          a.a(bnd.p(this.a), paramMessage.arg1, new bnf(this, paramMessage));
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bne
 * JD-Core Version:    0.6.2
 */
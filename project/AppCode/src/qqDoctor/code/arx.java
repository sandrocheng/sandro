import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacyPatternPasswordEnterActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class arx extends Handler
{
  arx(arw paramarw)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (arw.a(this.a))
        ho.a().K(true);
      while (true)
      {
        this.a.getActivity().finish();
        ho.a().A(1);
        break;
        if ((arw.b(this.a) == 2) && (arw.c(this.a) != null) && (!arw.c(this.a).equals("")))
          sv.c = arw.c(this.a);
        new yj(arw.d(this.a));
        yj.a(arw.d(this.a), arw.b(this.a));
      }
      if (!arw.a(this.a))
      {
        Context localContext = arw.d(this.a);
        int i = arw.b(this.a);
        String str = arw.c(this.a);
        Intent localIntent = new Intent(localContext, PrivacyPatternPasswordEnterActivity.class);
        a.a(localIntent, i, -1, str);
        localContext.startActivity(localIntent);
      }
      this.a.getActivity().finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     arx
 * JD-Core Version:    0.6.2
 */
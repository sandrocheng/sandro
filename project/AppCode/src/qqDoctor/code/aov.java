import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class aov extends Handler
{
  aov(aou paramaou)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (aou.a(this.a));
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      case 400:
      default:
        break;
      case 100:
        if (aou.b(this.a) != null)
        {
          aou.b(this.a).setMessage(2131430079);
          aou.b(this.a).show();
        }
        aou.a(this.a, aou.c(this.a));
        break;
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 208:
      case 302:
      case 304:
      case 401:
      case 402:
      case 404:
        ha.a(aou.d(this.a), (String)paramMessage.obj);
        aou.e(this.a);
        aou.a(this.a, false);
        aou.f(this.a);
        aou.g(this.a);
        break;
      case 301:
        ha.a(aou.h(this.a), (String)paramMessage.obj);
        aou.e(this.a);
        aou.a(this.a, false);
        aou.f(this.a);
        aou.g(this.a);
        break;
      case 207:
        ha.b(aou.i(this.a), (String)paramMessage.obj);
        aou.a(this.a, aou.j(this.a));
        break;
      case 107:
      case 305:
      case 405:
        aou.a(this.a, aou.j(this.a));
        break;
      case 300:
        ha.b(aou.k(this.a), (String)paramMessage.obj);
        break;
      case 200:
        aou.a(this.a, aou.c(this.a));
        break;
      case 501:
        Bitmap localBitmap = aou.a((Bitmap)paramMessage.obj, aou.l(this.a).getResources().getColor(2131296422));
        if ((aou.m(this.a) != null) && (localBitmap != null))
        {
          aou.m(this.a).setImageBitmap(localBitmap);
        }
        else if ((aou.m(this.a) != null) && (localBitmap == null))
        {
          aou.m(this.a).setImageResource(2130837950);
          ha.a(aou.n(this.a), 2131430061);
        }
        break;
      case 502:
        this.a.onBackClick();
        break;
      case 503:
        synchronized (aou.o(this.a))
        {
          aou.o(this.a).notify();
        }
      case 504:
        aou.a(this.a, false);
        aou.f(this.a);
        aou.g(this.a);
        break;
      case 599:
        ha.b(aou.p(this.a), (String)paramMessage.obj);
        aou.e(this.a);
        aou.a(this.a, false);
        aou.f(this.a);
        aou.g(this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aov
 * JD-Core Version:    0.6.2
 */
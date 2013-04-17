import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;

final class bbz extends Handler
{
  bbz(bby parambby)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 2:
    case 4:
    case 3:
    }
    while (true)
    {
      return;
      new bca(this).start();
      continue;
      bby.c(this.a);
      bby.d(this.a);
      continue;
      if (this.a.getFrameworkTemplateUI() != null)
      {
        bby.e(this.a).a(this.a.a);
        bby.f(this.a).a(this.a.a);
        bby.b(this.a).sendEmptyMessage(4);
        if ((this.a.a != 1) && (this.a.a != 2))
        {
          this.a.getFrameworkTemplateUI().setOptionButtonPopStyle(bby.g(this.a));
          boolean bool1 = xi.b();
          boolean bool2 = ho.a().di();
          ho.a().dz();
          if ((!bool1) && (bool2))
          {
            if (bby.h(this.a) == null)
            {
              bby.a(this.a, new Dialog(bby.i(this.a)));
              bby.h(this.a).setCancelable(false);
              bby.h(this.a).addProgressDialog();
              bby.h(this.a).setMessage(2131429559);
            }
            bby.h(this.a).show();
            xi.b(bby.j(this.a), new bcb(this));
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bbz
 * JD-Core Version:    0.6.2
 */
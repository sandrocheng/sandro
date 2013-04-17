import com.tencent.qqpimsecure.ui.activity.SyncQQPimPasswordSettingsActivity;
import com.tencent.qqpimsecure.ui.activity.SyncQQPimPasswordSettingsActivity.a;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;

final class afc
  implements Runnable
{
  afc(afb paramafb, String paramString, Dialog paramDialog)
  {
  }

  public final void run()
  {
    bc localbc = new bc();
    cw localcw = cw.d();
    int i = localbc.a(localcw.f(), localcw.e(), de.a(), this.a);
    this.b.dismiss();
    if (i == 0)
    {
      ha.b(SyncQQPimPasswordSettingsActivity.a.g(this.c.a), 2131427649);
      this.c.a.a.finish();
    }
    while (true)
    {
      return;
      ha.b(SyncQQPimPasswordSettingsActivity.a.h(this.c.a), 2131427650);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afc
 * JD-Core Version:    0.6.2
 */
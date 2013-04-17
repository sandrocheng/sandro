import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.ArrayList;
import java.util.List;

final class boq
  implements View.OnClickListener
{
  boq(bok parambok)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)bok.j(this.a).getTag()).intValue();
    dr localdr = new dr();
    if (bok.k(this.a).size() > 0)
    {
      kw localkw = ((kv)bok.l(this.a).get(i)).d;
      if (localkw != null)
      {
        localdr.a = localkw.getPackageName();
        localdr.b = localkw.getAppName();
        ij localij = bok.m(this.a);
        hs localhs = localij.b;
        String str = localij.c;
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("pkgName", localdr.a);
        localContentValues.put("appName", localdr.b);
        localhs.a(str, localContentValues);
        localij.b.b();
        kd localkd = new kd();
        int j = -1 + localkd.a.getInt("update_app_count", 0);
        localkd.b.putInt("update_app_count", j).commit();
        ha.a(bok.n(this.a), bok.o(this.a).getString(2131429671));
        bok.p(this.a).sendEmptyMessage(-1);
        if ((bok.q(this.a).a() == null) || (bok.m(this.a).a() == null) || (bok.q(this.a).a().size() != bok.m(this.a).a().size()))
          break label312;
        bok.a(this.a, true);
      }
    }
    while (true)
    {
      nd.a().a(26401);
      return;
      label312: bok.a(this.a, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     boq
 * JD-Core Version:    0.6.2
 */
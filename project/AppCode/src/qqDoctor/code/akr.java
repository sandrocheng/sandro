import android.content.ContentValues;
import com.tencent.tmsecure.utils.StringUtil;
import java.util.Set;

final class akr
  implements Runnable
{
  akr(akp paramakp, mf parammf)
  {
  }

  public final void run()
  {
    String str = StringUtil.assertNotNullString(this.a.a);
    if (this.b.a)
    {
      if ((str != null) && (!str.equals("")))
      {
        sv.a.remove(str);
        akp.b(this.b).a.a("tb_privacy_lock", "pkg_name=?", new String[] { str });
      }
      nd.a().a(26351);
    }
    while (true)
    {
      akp.a(this.a);
      return;
      if ((str != null) && (!str.equals("")) && (!sv.a.contains(str)))
      {
        sv.a.add(str);
        ji localji = akp.b(this.b);
        mf localmf = this.a;
        ContentValues localContentValues = new ContentValues();
        localContentValues.clear();
        localContentValues.put("pkg_name", localmf.a);
        localContentValues.put("app_name", localmf.b);
        localContentValues.put("reserverd_1", localmf.d);
        localContentValues.put("reserverd_2", localmf.e);
        localContentValues.put("reserverd_3", localmf.f);
        localji.a.a("tb_privacy_lock", null, localContentValues);
        localji.a.b();
      }
      nd.a().a(26350);
      sv.a(akp.c(this.b)).b();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     akr
 * JD-Core Version:    0.6.2
 */
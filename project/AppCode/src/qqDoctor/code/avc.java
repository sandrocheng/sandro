import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.ContactsContract.Contacts;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import java.util.List;

final class avc
  implements View.OnClickListener
{
  avc(auu paramauu)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)auu.l(this.a).getTag()).intValue();
    ky localky = (ky)auu.m(this.a).get(i);
    if (auu.g(this.a).contains(localky.phonenum))
      ha.a(auu.n(this.a), auu.o(this.a).getResources().getString(2131428410));
    while (true)
    {
      nd.a().a(26324);
      return;
      try
      {
        Intent localIntent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        localIntent.putExtra("phone", localky.phonenum);
        auu.p(this.a).startActivity(localIntent);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avc
 * JD-Core Version:    0.6.2
 */
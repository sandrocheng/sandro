import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.ContactsContract.Contacts;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class avy
  implements AdapterView.OnItemClickListener
{
  avy(avu paramavu, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    if ((i < 0) || (i > avu.c(this.b).size()))
    {
      this.a.dismiss();
      return;
    }
    mk localmk = (mk)avu.d(this.b).getItem(i);
    switch (localContextMenuModel.eventCode)
    {
    default:
    case 11:
    case 2:
    case 9:
    case 6:
    case 7:
    case 4:
    case 5:
    case 10:
    case 3:
    case 8:
    }
    while (true)
    {
      this.a.dismiss();
      break;
      if (localmk.k)
        ha.a(avu.e(this.b), avu.f(this.b).getString(2131428489));
      while (true)
      {
        ((mk)avu.h(this.b).get(i)).k = true;
        ((aiw)this.b.getAdapter()).a();
        ((aiw)this.b.getAdapter()).notifyDataSetChanged();
        break;
        avu.g(this.b).setTag(new Integer(i));
        this.b.a(localmk);
      }
      avu.j(this.b).a(0, localmk, avu.i(this.b));
      avu.k(this.b).a(26316);
      continue;
      ft.a(localmk.a());
      continue;
      Intent localIntent2 = new Intent("android.intent.action.VIEW");
      localIntent2.putExtra("sms_body", localmk.getBody());
      localIntent2.setType("vnd.android-dir/mms-sms");
      avu.l(this.b).startActivity(localIntent2);
      continue;
      gu.a(avu.m(this.b), localmk.a());
      continue;
      if (avu.n(this.b).contains(localmk.a()))
      {
        ha.a(avu.o(this.b), avu.p(this.b).getResources().getString(2131428410));
      }
      else
      {
        Intent localIntent1 = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
        localIntent1.putExtra("phone", localmk.a());
        avu.q(this.b).startActivity(localIntent1);
        continue;
        vk.a locala2 = new vk.a(localmk, 15);
        avu.j(this.b).a(localmk.name, localmk.a(), 1, locala2, avu.i(this.b));
        avu.k(this.b).a(26318);
        continue;
        vk.a locala1 = new vk.a(localmk, 13);
        avu.j(this.b).a(localmk.name, localmk.a(), 0, locala1, avu.i(this.b));
        avu.k(this.b).a(26317);
        continue;
        avu.k(this.b).a(26319);
        this.b.a(i);
        continue;
        gu.b(avu.r(this.b), localmk.a(), localmk.getBody());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     avy
 * JD-Core Version:    0.6.2
 */
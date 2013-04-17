import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.ContactsContract.Contacts;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import com.tencent.qqpimsecure.uilib.model.ContextMenuModel;
import com.tencent.qqpimsecure.uilib.view.dialog.ContextMenuDialog;
import java.util.List;

final class auz
  implements AdapterView.OnItemClickListener
{
  auz(auu paramauu, ContextMenuDialog paramContextMenuDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ContextMenuModel localContextMenuModel = this.a.getItem(paramInt);
    int i = this.a.getContextItemPosition();
    if ((i < 0) || (i > auu.b(this.b).size()))
    {
      this.a.dismiss();
      return;
    }
    ky localky = (ky)auu.c(this.b).getItem(i);
    nd localnd = nd.a();
    switch (localContextMenuModel.eventCode)
    {
    case 3:
    case 7:
    default:
    case 10:
    case 2:
    case 8:
    case 6:
    case 4:
    case 5:
    case 9:
    }
    while (true)
    {
      this.a.dismiss();
      break;
      this.b.a(localky);
      localnd.a(26322);
      continue;
      auu.e(this.b).a(1, localky, auu.d(this.b));
      localnd.a(26322);
      continue;
      ft.a(localky.phonenum);
      localnd.a(26325);
      continue;
      gu.a(auu.f(this.b), localky.phonenum);
      localnd.a(26326);
      continue;
      if (auu.g(this.b).contains(localky.phonenum))
      {
        ha.a(auu.h(this.b), auu.i(this.b).getResources().getString(2131428410));
      }
      else
      {
        try
        {
          Intent localIntent = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
          localIntent.putExtra("phone", localky.phonenum);
          auu.j(this.b).startActivity(localIntent);
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
        }
        continue;
        vk.a locala2 = new vk.a(localky.phonenum, true, 15);
        auu.e(this.b).a(localky.name, localky.phonenum, 1, locala2, auu.d(this.b));
        continue;
        vk.a locala1 = new vk.a(localky.phonenum, true, 13);
        auu.e(this.b).a(localky.name, localky.phonenum, 0, locala1, auu.d(this.b));
        localnd.a(26323);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     auz
 * JD-Core Version:    0.6.2
 */
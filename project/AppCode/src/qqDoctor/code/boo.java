import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.ui.activity.market.SDcardNotEnoughDialog;
import com.tencent.qqpimsecure.uilib.view.PinnedHeaderListView;
import com.tencent.qqpimsecure.uilib.view.software.SoftwareUpdateIconView;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil.SizeInfo;
import java.util.List;

final class boo
  implements View.OnClickListener
{
  boo(bok parambok)
  {
  }

  public final void onClick(View paramView)
  {
    int i = ((Integer)bok.b(this.a).getTag()).intValue();
    ((kv)bok.c(this.a).get(i)).e = true;
    SoftwareUpdateIconView localSoftwareUpdateIconView = (SoftwareUpdateIconView)((LinearLayout)paramView).getTag();
    kv localkv = (kv)localSoftwareUpdateIconView.getTag();
    switch (localSoftwareUpdateIconView.getUpdateState())
    {
    case 3:
    default:
    case 1:
    case 6:
    case 4:
    case 2:
    case 5:
    }
    while (true)
    {
      return;
      PhoneInfoUtil.SizeInfo localSizeInfo2 = new PhoneInfoUtil.SizeInfo();
      PhoneInfoUtil.getStorageCardSize(localSizeInfo2);
      long l2 = localSizeInfo2.a;
      if (localkv.d.getSize() > l2)
      {
        Intent localIntent2 = new Intent();
        localIntent2.setClass(bok.d(this.a), SDcardNotEnoughDialog.class);
        bok.e(this.a).startActivity(localIntent2);
      }
      else
      {
        nd.a().a(26082);
        this.a.h(localkv);
        continue;
        PhoneInfoUtil.SizeInfo localSizeInfo1 = new PhoneInfoUtil.SizeInfo();
        PhoneInfoUtil.getStorageCardSize(localSizeInfo1);
        long l1 = localSizeInfo1.a;
        if (localkv.d.getSize() > l1)
        {
          Intent localIntent1 = new Intent();
          localIntent1.setClass(bok.f(this.a), SDcardNotEnoughDialog.class);
          bok.g(this.a).startActivity(localIntent1);
        }
        else
        {
          this.a.h(localkv);
          continue;
          this.a.i(localkv);
          continue;
          this.a.k(localkv);
          continue;
          this.a.j(localkv);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     boo
 * JD-Core Version:    0.6.2
 */
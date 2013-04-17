import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.qqpimsecure.ui.activity.privacy.PrivacySafeActivity;
import com.tencent.qqpimsecure.ui.activity.privacy.VerifyPrivacyPasswordActivity;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;

final class bgp
  implements View.OnClickListener
{
  bgp(bgo parambgo)
  {
  }

  public final void onClick(View paramView)
  {
    int i = 1;
    String str1 = ho.a().n();
    int j;
    if ((str1 != null) && (!str1.equals("")))
    {
      j = i;
      if (j == 0)
        break label104;
      Context localContext2 = bgo.a(this.a);
      int m = bgo.b(this.a);
      String str4 = bgo.c(this.a);
      Intent localIntent2 = new Intent(localContext2, VerifyPrivacyPasswordActivity.class);
      a.a(localIntent2, m, -1, str4);
      localContext2.startActivity(localIntent2);
      this.a.getActivity().finish();
    }
    label204: 
    while (true)
    {
      return;
      j = 0;
      break;
      label104: String str2 = ho.a().ci();
      if ((str2 != null) && (!str2.equals("")));
      while (true)
      {
        if (i == 0)
          break label204;
        Context localContext1 = bgo.d(this.a);
        int k = bgo.b(this.a);
        String str3 = bgo.c(this.a);
        Intent localIntent1 = new Intent(localContext1, PrivacySafeActivity.class);
        a.a(localIntent1, k, 2, str3);
        localContext1.startActivity(localIntent1);
        this.a.getActivity().finish();
        break;
        i = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgp
 * JD-Core Version:    0.6.2
 */
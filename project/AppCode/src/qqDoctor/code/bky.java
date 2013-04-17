import android.content.ContentValues;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.qqpimsecure.uilib.view.dialog.RadioButtonDialog;
import java.util.ArrayList;

final class bky
  implements AdapterView.OnItemClickListener
{
  bky(bkn parambkn, mk parammk, int paramInt, RadioButtonDialog paramRadioButtonDialog)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt == 0)
    {
      jo localjo2 = jo.a();
      ContentValues localContentValues2 = gu.a(this.a, false);
      localjo2.c.a("nocharge_body_smslog", "id", localContentValues2);
      localjo2.c.b();
      bkn.a(this.d, this.a, this.b, false, false);
      bkn.a(this.d, this.a, 16);
    }
    while (true)
    {
      this.c.dismiss();
      return;
      if (paramInt == 1)
      {
        jo localjo1 = jo.a();
        ContentValues localContentValues1 = gu.a(this.a, false);
        localjo1.c.a("nocharge_phonenum_smslog", "id", localContentValues1);
        localjo1.c.b();
        ArrayList localArrayList = bkn.w(this.d).d(this.b);
        if (localArrayList == null)
          break;
        bkn.a(this.d, localArrayList, this.b);
        bkn.a(this.d, this.a, 17);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bky
 * JD-Core Version:    0.6.2
 */
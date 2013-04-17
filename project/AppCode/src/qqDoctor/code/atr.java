import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.TextView;
import java.util.List;

final class atr
  implements AdapterView.OnItemSelectedListener
{
  atr(atn paramatn)
  {
  }

  public final void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 0;
    if (atn.p(this.a) == 2)
    {
      if (((lj)atn.q(this.a).get(paramInt)).c != 0)
        atn.r(this.a).setVisibility(0);
    }
    else
    {
      TextView localTextView1 = atn.t(this.a);
      String str1 = atn.s(this.a).getString(2131429907);
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(paramInt + 1);
      arrayOfObject1[1] = Integer.valueOf(atn.q(this.a).size());
      localTextView1.setText(String.format(str1, arrayOfObject1));
      if (((lj)atn.q(this.a).get(paramInt)).c != 0)
        break label331;
      TextView localTextView3 = atn.w(this.a);
      String str3 = atn.u(this.a).getString(2131429908);
      Object[] arrayOfObject3 = new Object[3];
      arrayOfObject3[0] = atn.v(this.a).getString(2131429937);
      arrayOfObject3[1] = Integer.valueOf(paramInt + 1);
      arrayOfObject3[2] = Integer.valueOf(atn.q(this.a).size());
      localTextView3.setText(String.format(str3, arrayOfObject3));
    }
    while (true)
    {
      if (i >= this.a.a.size())
        return;
      if ((i < paramInt - 1) || (i > paramInt + 1))
      {
        Bitmap localBitmap = (Bitmap)this.a.a.get(i);
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
          localBitmap.recycle();
        this.a.a.set(i, null);
      }
      i++;
      continue;
      atn.r(this.a).setVisibility(4);
      break;
      label331: TextView localTextView2 = atn.w(this.a);
      String str2 = atn.x(this.a).getString(2131429908);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = atn.y(this.a).getString(2131429939);
      arrayOfObject2[1] = Integer.valueOf(paramInt + 1);
      arrayOfObject2[2] = Integer.valueOf(atn.q(this.a).size());
      localTextView2.setText(String.format(str2, arrayOfObject2));
      i = 0;
    }
  }

  public final void onNothingSelected(AdapterView<?> paramAdapterView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atr
 * JD-Core Version:    0.6.2
 */
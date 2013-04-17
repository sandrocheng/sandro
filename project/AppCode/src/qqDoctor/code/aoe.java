import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.tencent.qqpimsecure.ui.activity.ShareActivity;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

final class aoe
  implements View.OnClickListener
{
  aoe(aoa paramaoa)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView == aoa.c(this.a))
      switch (paramView.getId())
      {
      default:
      case 1:
      case 2:
      }
    while (true)
    {
      return;
      aoa.d(this.a);
      continue;
      aoa.e(this.a);
      aoa.f(this.a);
      aoa.g(this.a);
      aoa.h(this.a).a(true);
      aoa.i(this.a);
      continue;
      if (paramView == aoa.j(this.a))
      {
        aoa.j(this.a).setVisibility(8);
        aoa.k(this.a).setVisibility(8);
        aoa.l(this.a).setVisibility(8);
        aoa.m(this.a).setVisibility(8);
        aoa.n(this.a).setVisibility(8);
        aoa.o(this.a).setVisibility(0);
        aoa.p(this.a);
        aoa.q(this.a);
      }
      else if (paramView == aoa.k(this.a))
      {
        aoa.r(this.a);
      }
      else if (paramView == aoa.l(this.a))
      {
        aoa.r(this.a);
      }
      else if (paramView == aoa.m(this.a))
      {
        aoa.r(this.a);
      }
      else if (paramView == aoa.n(this.a))
      {
        Intent localIntent = new Intent(aoa.s(this.a), ShareActivity.class);
        localIntent.putExtra("default_content", aoa.t(this.a).getString(2131428249));
        localIntent.putExtra("from_where", 3);
        aoa.u(this.a).startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aoe
 * JD-Core Version:    0.6.2
 */
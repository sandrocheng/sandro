import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.GridView;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import java.util.ArrayList;
import java.util.List;

public final class ajg extends ajo
{
  private Context f;
  private LayoutInflater g;
  private List<lo> h;
  private GridView i;

  public ajg(Context paramContext, GridView paramGridView, List<lo> paramList)
  {
    super(paramList, false);
    this.f = paramContext;
    this.g = LayoutInflater.from(this.f);
    this.h = paramList;
    this.i = paramGridView;
    this.a = this.f.getResources().getDrawable(2130837753);
    this.b = this.f.getResources().getDrawable(2130837738);
    this.c = 3;
    this.d = 3;
  }

  protected final void a(int paramInt)
  {
    ImageView localImageView = (ImageView)this.i.findViewWithTag(((lo)this.h.get(paramInt)).b());
    if (localImageView != null)
    {
      if (!((lo)this.h.get(paramInt)).c)
        break label59;
      localImageView.setImageDrawable(this.b);
    }
    while (true)
    {
      return;
      label59: localImageView.setImageDrawable(this.a);
    }
  }

  protected final void a(mq parammq, lr paramlr)
  {
    lo locallo = (lo)paramlr;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(locallo.b());
    parammq.c = localArrayList;
  }

  protected final void a(mq parammq, boolean paramBoolean)
  {
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)parammq.b;
    ImageView localImageView;
    if ((paramBoolean) && (!this.e))
    {
      localImageView = (ImageView)this.i.findViewWithTag(parammq.a.b());
      if ((localBitmapDrawable == null) || (localImageView == null))
        break label54;
      localImageView.setImageDrawable(localBitmapDrawable);
    }
    while (true)
    {
      return;
      label54: if (localImageView != null)
        localImageView.setImageDrawable(this.b);
    }
  }

  public final int getCount()
  {
    if (this.h != null);
    for (int j = this.h.size(); ; j = 0)
      return j;
  }

  public final Object getItem(int paramInt)
  {
    return this.h.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ajg.a locala;
    lo locallo;
    int j;
    if (paramView == null)
    {
      paramView = this.g.inflate(2130903292, paramViewGroup, false);
      locala = new ajg.a();
      paramView.setTag(locala);
      locala.a = ((ImageView)paramView.findViewById(2131231557));
      locala.c = ((CheckBoxView)paramView.findViewById(2131231559));
      locala.b = ((ImageView)paramView.findViewById(2131231558));
      ViewGroup.LayoutParams localLayoutParams1 = locala.a.getLayoutParams();
      localLayoutParams1.width = lm.e.a;
      localLayoutParams1.height = lm.e.b;
      locala.a.setLayoutParams(localLayoutParams1);
      ViewGroup.LayoutParams localLayoutParams2 = locala.b.getLayoutParams();
      localLayoutParams2.width = lm.e.a;
      localLayoutParams2.height = lm.e.b;
      locala.b.setLayoutParams(localLayoutParams2);
      locala.c.setFocusable(false);
      locala.c.setFocusableInTouchMode(false);
      locala.c.setClickable(false);
      locallo = (lo)this.h.get(paramInt);
      locala.c.setChecked(locallo.a);
      locala.a.setTag(locallo.b());
      ImageView localImageView = locala.b;
      if (!locallo.a)
        break label299;
      j = 2130837752;
      label245: localImageView.setBackgroundResource(j);
      BitmapDrawable localBitmapDrawable = locallo.e;
      if ((localBitmapDrawable == null) || (localBitmapDrawable.getBitmap().isRecycled()))
        break label306;
      locala.a.setImageDrawable(localBitmapDrawable);
    }
    while (true)
    {
      return paramView;
      locala = (ajg.a)paramView.getTag();
      break;
      label299: j = 2130838220;
      break label245;
      label306: if (locallo.c)
        locala.a.setImageDrawable(this.b);
      else
        locala.a.setImageDrawable(this.a);
    }
  }

  final class a
  {
    ImageView a;
    ImageView b;
    CheckBoxView c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ajg
 * JD-Core Version:    0.6.2
 */
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.model.ListModel;
import com.tencent.qqpimsecure.uilib.ui.adapter.BaseListAdapter;
import com.tencent.qqpimsecure.uilib.view.BaseListView;
import java.util.ArrayList;
import java.util.List;

public final class ain extends BaseListAdapter<mb>
{
  private Drawable a = this.mContext.getResources().getDrawable(17301651);
  private sl b;
  private ListView c;
  private boolean[] d;
  private ain.a[] e;
  private List<String> f = new ArrayList();

  public ain(Context paramContext, BaseListView paramBaseListView, List<ListModel<mb>> paramList)
  {
    super(paramContext, paramList);
    this.b = paramBaseListView.getImageLoaderService();
    this.c = paramBaseListView.getListView();
  }

  public final List<mb> a()
  {
    int i = this.e.length;
    ArrayList localArrayList = new ArrayList();
    int j = 0;
    if (j < i)
    {
      mb localmb;
      if (this.e[j] != null)
      {
        localmb = this.e[j].e;
        if (this.e[j].c.isChecked())
          if ((0x1 & localmb.e) == 0)
            break label89;
      }
      label89: for (int k = 1; ; k = 0)
      {
        if (k == 0)
          localArrayList.add(localmb);
        j++;
        break;
      }
    }
    return localArrayList;
  }

  public final void a(int paramInt)
  {
    boolean bool1 = true;
    int i = this.e.length;
    for (int j = 0; ; j++)
    {
      int k;
      boolean bool2;
      label95: boolean[] arrayOfBoolean;
      if (j < i)
      {
        if ((paramInt != j) || (this.e[j] == null))
          continue;
        CheckBox localCheckBox = this.e[j].c;
        if (this.e[j].e != null)
        {
          if ((0x1 & this.e[j].e.e) == 0)
            break label123;
          k = bool1;
          if (k == 0)
          {
            if (localCheckBox.isChecked())
              break label129;
            bool2 = bool1;
            localCheckBox.setChecked(bool2);
            arrayOfBoolean = this.d;
            if (this.d[paramInt] != 0)
              break label135;
          }
        }
      }
      while (true)
      {
        arrayOfBoolean[paramInt] = bool1;
        return;
        label123: k = 0;
        break;
        label129: bool2 = false;
        break label95;
        label135: bool1 = false;
      }
    }
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ain.a locala;
    mb localmb;
    label139: int i;
    label159: label182: int k;
    label271: int m;
    if (paramView == null)
    {
      paramView = createItemView(paramInt, 2130903349);
      locala = new ain.a();
      locala.a = ((ImageView)paramView.findViewById(2131231672));
      locala.b = ((TextView)paramView.findViewById(2131230969));
      locala.c = ((CheckBox)paramView.findViewById(2131231052));
      locala.d = ((TextView)paramView.findViewById(2131231515));
      paramView.setTag(locala);
      this.e[paramInt] = locala;
      localmb = (mb)this.mDataList.get(paramInt);
      if ((localmb.b == null) || (localmb.b.length() <= 0))
        break label396;
      locala.b.setText(localmb.b);
      locala.e = localmb;
      if ((0x1 & localmb.e) == 0)
        break label412;
      i = 1;
      if (i == 0)
        break label418;
      locala.c.setVisibility(4);
      locala.d.setVisibility(0);
      locala.c.setClickable(false);
      if (localmb.g != null)
        break label465;
      locala.a.setImageDrawable(this.a);
      locala.a.setTag(localmb.a);
      kw localkw = new kw();
      localkw.setPackageName(localmb.a);
      localkw.a(localmb);
      String str = localkw.getPackageName();
      int j = this.f.size();
      k = 0;
      if (k >= j)
        break label459;
      if (((String)this.f.get(k)).compareTo(str) != 0)
        break label453;
      m = 1;
      label303: if (m == 0)
      {
        lv locallv = new lv();
        locallv.b = 2;
        locallv.g = localkw.getPackageName().hashCode();
        locallv.d = localkw.getPackageName();
        locallv.a = 0;
        locallv.h = localkw;
        locallv.i = new aio(this);
        this.b.b(locallv);
      }
    }
    while (true)
    {
      return paramView;
      locala = (ain.a)paramView.getTag();
      break;
      label396: locala.b.setText(localmb.a);
      break label139;
      label412: i = 0;
      break label159;
      label418: locala.c.setVisibility(0);
      locala.d.setVisibility(4);
      locala.c.setChecked(this.d[paramInt]);
      break label182;
      label453: k++;
      break label271;
      label459: m = 0;
      break label303;
      label465: locala.a.setImageDrawable(localmb.g);
    }
  }

  public final void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    int i = getCount();
    if ((this.d == null) || (this.d.length != i))
      this.d = new boolean[i];
    if ((this.e == null) || (this.e.length != i))
      this.e = new ain.a[i];
  }

  final class a
  {
    ImageView a;
    TextView b;
    CheckBox c;
    TextView d;
    mb e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ain
 * JD-Core Version:    0.6.2
 */
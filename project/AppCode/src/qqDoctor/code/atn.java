import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.activity.BaseUIActivity;
import com.tencent.qqpimsecure.uilib.view.BaseView;
import com.tencent.qqpimsecure.uilib.view.dialog.Dialog;
import com.tencent.qqpimsecure.uilib.view.template.FrameworkTemplateUI;
import com.tencent.qqpimsecure.view.filesafe.GalleryExt;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class atn extends BaseView
{
  private AdapterView.OnItemSelectedListener A = new atr(this);
  private yj B;
  public List<Bitmap> a;
  private int b = 1;
  private ArrayList<String> c;
  private Button d;
  private LinearLayout e;
  private Button f;
  private Button g;
  private Button h;
  private TextView i;
  private Button j;
  private RelativeLayout k;
  private TextView l;
  private TextView m;
  private boolean n;
  private GalleryExt o;
  private ajn p;
  private ib q;
  private List<lj> r;
  private Dialog s;
  private DisplayMetrics t;
  private int u = -1;
  private boolean v;
  private Messenger w;
  private Handler x = new ato(this);
  private View.OnClickListener y = new atp(this);
  private AdapterView.OnItemClickListener z = new atq(this);

  public atn(Context paramContext)
  {
    super(paramContext, 2130903346);
  }

  private void a()
  {
    int i1;
    int i2;
    if ((this.n) && (this.p != null))
    {
      i1 = this.p.getCount();
      i2 = this.o.getSelectedItemPosition();
      if (i2 < i1)
      {
        TextView localTextView1 = this.l;
        String str1 = this.mContext.getString(2131429907);
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(i2 + 1);
        arrayOfObject1[1] = Integer.valueOf(i1);
        localTextView1.setText(String.format(str1, arrayOfObject1));
        if (((lj)this.r.get(i2)).c == 0)
        {
          TextView localTextView3 = this.m;
          String str3 = this.mContext.getString(2131429908);
          Object[] arrayOfObject3 = new Object[3];
          arrayOfObject3[0] = this.mContext.getString(2131429937);
          arrayOfObject3[1] = Integer.valueOf(i2 + 1);
          arrayOfObject3[2] = Integer.valueOf(i1);
          localTextView3.setText(String.format(str3, arrayOfObject3));
        }
      }
      else
      {
        this.e.setVisibility(0);
        this.k.setVisibility(0);
      }
    }
    while (true)
    {
      return;
      TextView localTextView2 = this.m;
      String str2 = this.mContext.getString(2131429908);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = this.mContext.getString(2131429939);
      arrayOfObject2[1] = Integer.valueOf(i2 + 1);
      arrayOfObject2[2] = Integer.valueOf(i1);
      localTextView2.setText(String.format(str2, arrayOfObject2));
      break;
      this.e.setVisibility(4);
      this.k.setVisibility(4);
    }
  }

  private void b()
  {
    Dialog localDialog = new Dialog(this.mContext);
    localDialog.setTitle(2131428928);
    localDialog.setMessage(2131429860);
    localDialog.setPositiveButton(2131429853, new atu(this, localDialog), 1);
    localDialog.setNegativeButton(2131427379, new atw(localDialog), 2);
    localDialog.show();
  }

  public final void loadDataList()
  {
    if (this.b == 1)
      this.r = this.q.a(0);
    while (true)
    {
      this.mHandler.sendEmptyMessage(-2);
      return;
      if ((this.b == 2) && (this.r == null))
      {
        this.r = new ArrayList();
        for (int i1 = 0; i1 < this.c.size(); i1++)
        {
          lj locallj = this.q.b("file_safe_file_info", "mFileSrcPath=?", new String[] { (String)this.c.get(i1) }, "id ASC");
          this.r.add(locallj);
        }
      }
    }
  }

  public final void onCreate()
  {
    super.onCreate();
    getActivity().requestWindowFeature(1);
    getActivity().getWindow().setFlags(1024, 1024);
    this.t = new DisplayMetrics();
    getActivity().getWindowManager().getDefaultDisplay().getMetrics(this.t);
    this.e = ((LinearLayout)findViewById(2131231653));
    this.d = ((Button)findViewById(2131230763));
    this.l = ((TextView)findViewById(2131231667));
    this.m = ((TextView)findViewById(2131231666));
    this.o = ((GalleryExt)findViewById(2131231664));
    this.k = ((RelativeLayout)findViewById(2131231654));
    this.f = ((Button)findViewById(2131231669));
    this.g = ((Button)findViewById(2131231670));
    this.h = ((Button)findViewById(2131231671));
    this.i = ((TextView)findViewById(2131231668));
    this.j = ((Button)findViewById(2131231665));
    this.q = new ib();
    this.s = a.a(this.mContext, this.mContext.getString(2131429871), false, null);
    this.d.setOnClickListener(this.y);
    this.g.setOnClickListener(this.y);
    this.f.setOnClickListener(this.y);
    this.h.setOnClickListener(this.y);
    this.i.setOnClickListener(this.y);
    this.j.setOnClickListener(this.y);
    this.o.setOnItemClickListener(this.z);
    this.o.setOnItemSelectedListener(this.A);
    this.n = true;
    this.e.setVisibility(0);
    this.k.setVisibility(0);
    if (this.w == null)
      this.w = new Messenger(this.x);
    this.mHandler.sendEmptyMessageDelayed(103, 1500L);
    Intent localIntent = getActivity().getIntent();
    if (localIntent != null)
      if (this.u == -1)
      {
        this.u = localIntent.getIntExtra("position", -1);
        if (this.u == -1)
          getActivity().finish();
        this.b = localIntent.getIntExtra("from_where", 1);
        this.c = localIntent.getStringArrayListExtra("src_path_list");
        if (this.b == 2)
        {
          this.h.setVisibility(0);
          this.i.setVisibility(0);
          this.l.setVisibility(8);
          this.m.setVisibility(0);
        }
        localIntent.removeExtra("position");
        localIntent.removeExtra("from_where");
        localIntent.removeExtra("src_path_list");
      }
    while (true)
    {
      return;
      getActivity().finish();
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    this.d.setOnClickListener(null);
    this.g.setOnClickListener(null);
    this.f.setOnClickListener(null);
    this.o.setOnItemClickListener(null);
    this.o.setOnItemSelectedListener(null);
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      Bitmap localBitmap = (Bitmap)localIterator.next();
      if ((localBitmap != null) && (!localBitmap.isRecycled()))
        localBitmap.recycle();
    }
    this.a.clear();
  }

  public final void onHandlerMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 100:
    case 101:
    case 102:
    case 103:
    }
    while (true)
    {
      return;
      if (this.s != null)
        this.s.dismiss();
      this.r.remove(this.u);
      if ((this.a.get(this.u) != null) && (!((Bitmap)this.a.get(this.u)).isRecycled()))
        ((Bitmap)this.a.get(this.u)).recycle();
      this.a.remove(this.u);
      int i1 = -1 + this.u;
      this.u = i1;
      if (i1 < 0)
        this.u = 0;
      this.mHandler.removeMessages(100);
      refreshListData();
      continue;
      if (this.s != null)
        this.s.dismiss();
      ha.b(this.mContext, this.mContext.getString(2131429865));
      if (this.b != 2)
        getActivity().finish();
      if (this.b != 2)
      {
        getActivity().finish();
      }
      else
      {
        ha.b(this.mContext, this.mContext.getString(2131429895));
        px.a(this.mContext).d().remove(this.u);
        this.mHandler.sendEmptyMessage(100);
        continue;
        this.n = false;
        this.e.setVisibility(4);
        this.k.setVisibility(4);
      }
    }
  }

  public final void onResume()
  {
    super.onResume();
    if (this.b == 2)
      if ((this.r != null) && (this.r.size() > 0))
      {
        for (int i2 = 0; i2 < this.r.size(); i2++)
        {
          lj locallj2 = this.q.b("file_safe_file_info", "mFileSrcPath=?", new String[] { ((lj)this.r.get(i2)).a() }, "id ASC");
          if ((locallj2 == null) || (locallj2.a() == null) || (locallj2.a().equals("")))
          {
            px.a(this.mContext).d().remove(i2);
            this.r.remove(i2);
            i2--;
            this.u = (-1 + this.u);
            if (this.u < 0)
              this.u = 0;
          }
        }
        if (this.r.size() != 0)
          break label372;
      }
    label372: for (int i3 = 1; ; i3 = 0)
    {
      if (i3 != 0)
        getActivity().finish();
      while (true)
      {
        return;
        if (this.v)
        {
          this.v = false;
          Iterator localIterator = this.q.a(1).iterator();
          while (localIterator.hasNext())
          {
            lj locallj1 = (lj)localIterator.next();
            String str = locallj1.b() + locallj1.d();
            if (new File(str).exists())
            {
              int i1 = new kq().a(str, locallj1.b(), 1);
              new StringBuilder("restoreVideo ").append(str).append(" ").append(i1).toString();
              continue;
              this.i.setVisibility(8);
              this.m.setVisibility(8);
            }
          }
        }
        this.mHandler.sendEmptyMessage(-1);
      }
    }
  }

  public final void refreshListData()
  {
    if ((this.r == null) || (this.r.size() == 0))
      getActivity().finish();
    while (true)
    {
      return;
      if (this.p == null)
      {
        this.a = new ArrayList();
        Iterator localIterator = this.r.iterator();
        while (localIterator.hasNext())
        {
          localIterator.next();
          this.a.add(null);
        }
        this.p = new ajn(getActivity(), this, this.r, this.t);
        this.o.setAdapter(this.p);
      }
      this.p.a(this.u);
      this.o.setSelection(this.u);
      this.p.notifyDataSetChanged();
      a();
    }
  }

  protected final void subviewTemplateUIConfig(FrameworkTemplateUI paramFrameworkTemplateUI)
  {
    paramFrameworkTemplateUI.setTitleBar((byte)53);
    paramFrameworkTemplateUI.setInfoBarStyle((byte)49);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     atn
 * JD-Core Version:    0.6.2
 */
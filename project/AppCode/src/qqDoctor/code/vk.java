import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.util.ArrayList;
import java.util.List;

public final class vk
{
  Context a;
  final hq b;
  final hq c;
  String d = QQPimApplication.a().getResources().getString(2131428637);
  String e = QQPimApplication.a().getResources().getString(2131428638);
  String f = QQPimApplication.a().getResources().getString(2131428639);
  dv g = null;
  List<String> h = new ArrayList();
  Handler i;
  private final hq j;
  private List<lf> k = null;
  private int l;
  private zs m;

  public vk(Activity paramActivity, dv paramdv)
  {
    this.a = paramActivity;
    this.g = paramdv;
    this.b = new hq(1);
    this.c = new hq(0);
    this.j = new hq(2);
    this.i = new Handler(this.a.getMainLooper());
    this.m = new zs();
  }

  private void a(int paramInt)
  {
    if (paramInt == 2)
    {
      List localList2 = this.h;
      this.i.post(new wb(this, localList2));
    }
    while (true)
    {
      this.h = new ArrayList();
      return;
      if (paramInt == 0)
      {
        List localList1 = this.h;
        this.i.post(new vm(this, localList1));
      }
    }
  }

  public final void a(List<lf> paramList, int paramInt)
  {
    this.k = paramList;
    this.l = paramInt;
    if (this.k.size() > 0)
      a((lf)this.k.remove(0), paramInt);
  }

  public final void a(lf paramlf, int paramInt)
  {
    paramlf.b = paramInt;
    vw localvw2;
    if (paramInt == 2)
    {
      paramlf.a = null;
      localvw2 = new vw(this, paramlf);
      if (localvw2.b())
        new vp(this, paramlf).start();
    }
    while (true)
    {
      return;
      localvw2.a();
      continue;
      if (a(paramlf))
      {
        vw localvw1 = new vw(this, paramlf);
        if (localvw1.b())
          new vp(this, paramlf).start();
        else
          localvw1.a();
      }
      else
      {
        vl localvl = new vl(this, paramlf);
        ((Activity)this.a).runOnUiThread(new vq(this, paramlf, localvl));
      }
    }
  }

  final boolean a(lf paramlf)
  {
    boolean bool;
    if (paramlf.b == 2)
      bool = true;
    while (true)
    {
      return bool;
      if (paramlf.b == 1);
      for (hq localhq = this.c; ; localhq = this.b)
      {
        if (localhq.b(paramlf.phonenum))
          break label49;
        bool = true;
        break;
      }
      label49: bool = false;
    }
  }

  public static final class a
  {
    public mk a;
    public boolean b;
    public int c;

    public a(String paramString, boolean paramBoolean, int paramInt)
    {
      this.a = new mk();
      this.b = paramBoolean;
      this.c = paramInt;
      this.a.phonenum = paramString;
      this.a.date = System.currentTimeMillis();
      this.a.body = "-";
    }

    public a(mk parammk, int paramInt)
    {
      this.a = parammk;
      this.b = true;
      this.c = paramInt;
    }
  }

  static abstract interface b
  {
    public abstract void a();

    public abstract boolean b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vk
 * JD-Core Version:    0.6.2
 */
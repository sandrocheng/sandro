package com.ijinshan.software.recommand;

import android.os.AsyncTask;
import android.widget.ListView;
import android.widget.RelativeLayout;

final class l extends AsyncTask
{
  private l(NecessaryInstalledActivity paramNecessaryInstalledActivity, byte paramByte)
  {
  }

  private Void a()
  {
    NecessaryInstalledActivity.a(this.a, p.a(NecessaryInstalledActivity.e(this.a), NecessaryInstalledActivity.f(this.a)));
    return null;
  }

  private void b()
  {
    if (NecessaryInstalledActivity.d(this.a) != null)
    {
      NecessaryInstalledActivity.a(this.a, new j(this.a, this.a, NecessaryInstalledActivity.d(this.a)));
      NecessaryInstalledActivity.b(this.a).setAdapter(NecessaryInstalledActivity.g(this.a));
      NecessaryInstalledActivity.b(this.a).setOnItemClickListener(new m(this));
      NecessaryInstalledActivity.c(this.a).setVisibility(8);
    }
    while (true)
    {
      return;
      NecessaryInstalledActivity.b(this.a).setVisibility(8);
      NecessaryInstalledActivity.c(this.a).setVisibility(8);
      NecessaryInstalledActivity.a(this.a).setVisibility(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.l
 * JD-Core Version:    0.6.2
 */
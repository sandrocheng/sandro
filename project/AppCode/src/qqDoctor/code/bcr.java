import com.tencent.qqpimsecure.view.permission.MonitorLogListView;

public final class bcr
  implements Runnable
{
  public bcr(MonitorLogListView paramMonitorLogListView)
  {
  }

  public final void run()
  {
    jf localjf = MonitorLogListView.e(this.a);
    localjf.a.b("DELETE FROM permission_log");
    localjf.a.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bcr
 * JD-Core Version:    0.6.2
 */
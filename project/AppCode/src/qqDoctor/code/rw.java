final class rw
  implements Runnable
{
  rw(li paramli)
  {
  }

  public final void run()
  {
    if (this.a.i != null)
      this.a.i.onTaskFinish(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     rw
 * JD-Core Version:    0.6.2
 */
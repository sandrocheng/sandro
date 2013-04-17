package com.tencent.qqpimsecure.uilib.common;

class AutoTestUtil$1 extends Thread
{
  AutoTestUtil$1(AutoTestUtil paramAutoTestUtil, String paramString, long paramLong, Runtime paramRuntime)
  {
  }

  public void run()
  {
    while (true)
    {
      try
      {
        AutoTestUtil.access$002(this.this$0, AutoTestUtil.access$100(this.this$0, this.val$id, this.val$time));
        if (AutoTestUtil.access$000(this.this$0) == null)
        {
          break;
          if (AutoTestUtil.access$300(this.this$0) == 0)
          {
            AutoTestUtil.access$500(this.this$0);
            AutoTestUtil.access$308(this.this$0);
            sleep(50L);
          }
        }
        else
        {
          if ((!AutoTestUtil.access$200(this.this$0)) && (AutoTestUtil.access$300(this.this$0) < 1000))
            continue;
          AutoTestUtil.access$400(this.this$0);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      AutoTestUtil.access$600(this.this$0, this.val$id, this.val$runtime);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.common.AutoTestUtil.1
 * JD-Core Version:    0.6.2
 */
.class Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

.field final synthetic val$isHit:Z

.field final synthetic val$tempX:I

.field final synthetic val$tempY:I


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    iput-boolean p2, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->val$isHit:Z

    iput p3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->val$tempX:I

    iput p4, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->val$tempY:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x32

    const/4 v0, -0x1

    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->val$isHit:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->val$tempX:I

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->val$tempY:I

    move v6, v0

    move v5, v1

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    int-to-float v5, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;->access$1100(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$4;->this$0:Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;

    invoke-direct {v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout$DesktopLayoutRunnable;-><init>(Lcom/tencent/qqpimsecure/uilib/view/desktop/DesktopLayout;Landroid/view/MotionEvent;)V

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v6, v0

    move v5, v0

    goto :goto_1
.end method

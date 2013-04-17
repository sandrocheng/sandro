.class final Lcom/tencent/feedback/eup/j;
.super Ljava/util/TimerTask;
.source "ProGuard"


# instance fields
.field private synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/h;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 548
    iput-object p2, p0, Lcom/tencent/feedback/eup/j;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 553
    const-string v0, "timertask wake up!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 554
    iget-object v0, p0, Lcom/tencent/feedback/eup/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 555
    return-void
.end method

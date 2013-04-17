.class final Lcom/tencent/feedback/eup/i;
.super Ljava/util/TimerTask;
.source "CrashHandler.java"


# instance fields
.field private synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/eup/g;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 628
    iput-object p2, p0, Lcom/tencent/feedback/eup/i;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 633
    const-string v0, "timertask wake up!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/tencent/feedback/eup/i;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 635
    return-void
.end method

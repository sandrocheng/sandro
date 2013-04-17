.class public final Lea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/tencent/powermanager/view/PowerManagerView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/PowerManagerView;)V
    .locals 0

    iput-object p1, p0, Lea;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/16 v0, 0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lea;->a:Lcom/tencent/powermanager/view/PowerManagerView;

    invoke-static {v0}, Lcom/tencent/powermanager/view/PowerManagerView;->d(Lcom/tencent/powermanager/view/PowerManagerView;)Ls;

    move-result-object v0

    new-instance v1, Leb;

    invoke-direct {v1, p0}, Leb;-><init>(Lea;)V

    invoke-virtual {v0, v1}, Ls;->a(Ls$a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

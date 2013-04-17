.class final Lys;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lyr;


# direct methods
.method constructor <init>(Lyr;)V
    .locals 0

    iput-object p1, p0, Lys;->a:Lyr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lys;->a:Lyr;

    iget-object v1, v1, Lyr;->a:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/service/TimedTaskReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Lacc;

    iget-object v2, p0, Lys;->a:Lyr;

    iget-object v2, v2, Lyr;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lacc;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lacc;->a(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

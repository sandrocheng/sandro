.class final Ldt;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lds;


# direct methods
.method constructor <init>(Lds;)V
    .locals 0

    iput-object p1, p0, Ldt;->a:Lds;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Ldt;->a:Lds;

    invoke-static {v0}, Lds;->a(Lds;)Lds$a;

    move-result-object v0

    iget-object v1, v0, Lds$a;->b:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v0, v0, Lds$a;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

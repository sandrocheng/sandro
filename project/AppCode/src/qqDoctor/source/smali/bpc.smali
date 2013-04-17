.class final Lbpc;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbot;


# direct methods
.method constructor <init>(Lbot;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbpc;->a:Lbot;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Ldi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpc;->a:Lbot;

    invoke-static {v0}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

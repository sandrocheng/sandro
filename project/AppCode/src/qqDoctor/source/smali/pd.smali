.class final Lpd;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lpd;->a:Lpc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x3e8

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v0, v0, Lpc;->a:Lyk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v0, v0, Lpc;->a:Lyk;

    iget v1, v0, Lyk;->b:I

    int-to-long v1, v1

    add-long/2addr v1, v4

    long-to-int v1, v1

    iput v1, v0, Lyk;->b:I

    iget v1, v0, Lyk;->b:I

    const v2, 0xea60

    if-lt v1, v2, :cond_1

    iput v3, v0, Lyk;->b:I

    invoke-virtual {v0}, Lyk;->a()V

    :cond_1
    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v0, v0, Lpc;->a:Lyk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v0, v0, Lpc;->a:Lyk;

    iget-boolean v0, v0, Lyk;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lpd;->a:Lpc;

    invoke-static {v0}, Lpc;->a(Lpc;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v0, v0, Lpc;->a:Lyk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpd;->a:Lpc;

    iget-object v0, v0, Lpc;->a:Lyk;

    iget-object v1, v0, Lyk;->a:Ljava/lang/String;

    iput v3, v0, Lyk;->b:I

    iput-boolean v3, v0, Lyk;->c:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

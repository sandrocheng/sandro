.class final Lau;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lat;


# direct methods
.method constructor <init>(Lat;)V
    .locals 0

    iput-object p1, p0, Lau;->a:Lat;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "Login"

    const-string v1, "handleMessage enter "

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const-string v0, "Login"

    const-string v1, "handleMessage leave "

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_0
    new-instance v0, Lat$a;

    iget-object v1, p0, Lau;->a:Lat;

    invoke-direct {v0, v1, v4}, Lat$a;-><init>(Lat;B)V

    invoke-virtual {v0}, Lat$a;->start()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lau;->a:Lat;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lat;->a(Lat;II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lau;->a:Lat;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lat;->a(Lat;II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lau;->a:Lat;

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lat;->a(Lat;II)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lau;->a:Lat;

    iget-object v0, p0, Lau;->a:Lat;

    iget-object v0, v0, Lat;->e:Landroid/os/Handler;

    const/16 v1, 0x200a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lau;->a:Lat;

    iget-object v0, v0, Lat;->d:Landroid/os/Handler;

    const/16 v1, 0x2007

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lau;->a:Lat;

    iget-object v1, v1, Lat;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2001 -> :sswitch_1
        0x2003 -> :sswitch_3
        0x2004 -> :sswitch_2
        0x200a -> :sswitch_0
        0x9004 -> :sswitch_4
        0x9005 -> :sswitch_4
        0x9006 -> :sswitch_5
    .end sparse-switch
.end method

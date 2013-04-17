.class final Lbvg$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lbvg;


# direct methods
.method public constructor <init>(Lbvg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lbvg$a;->a:Lbvg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbvg$a;->a:Lbvg;

    iget-object v1, p0, Lbvg$a;->a:Lbvg;

    invoke-static {v1}, Lbvg;->a(Lbvg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbvg;->beginMmsConnectivity(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbvg$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Lbvg$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbvg$a;->a:Lbvg;

    invoke-static {v0}, Lbvg;->b(Lbvg;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbvg$a;->a:Lbvg;

    invoke-static {v0}, Lbvg;->c(Lbvg;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

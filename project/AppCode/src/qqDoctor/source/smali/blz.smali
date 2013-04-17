.class final Lblz;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbly;


# direct methods
.method constructor <init>(Lbly;)V
    .locals 0

    iput-object p1, p0, Lblz;->a:Lbly;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lblz;->a:Lbly;

    iget-object v1, p0, Lblz;->a:Lbly;

    invoke-static {v1}, Lbly;->a(Lbly;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0318

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbly;->setEmptyText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lblz;->a:Lbly;

    invoke-virtual {v0}, Lbly;->hideEmptyView()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

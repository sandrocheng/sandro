.class final Lbdo;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lbdk;


# direct methods
.method constructor <init>(Lbdk;)V
    .locals 0

    iput-object p1, p0, Lbdo;->a:Lbdk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbdo;->a:Lbdk;

    invoke-static {v0}, Lbdk;->f(Lbdk;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbdo;->a:Lbdk;

    invoke-static {v0}, Lbdk;->e(Lbdk;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.class final Laoo;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laon;


# direct methods
.method constructor <init>(Laon;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Laoo;->a:Laon;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Laoo;->a:Laon;

    invoke-static {v0}, Laon;->a(Laon;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Laoo;->a:Laon;

    invoke-static {v0}, Laon;->b(Laon;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Laoo;->a:Laon;

    invoke-static {v0}, Laon;->c(Laon;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

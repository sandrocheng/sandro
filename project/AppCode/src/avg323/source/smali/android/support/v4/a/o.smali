.class Landroid/support/v4/a/o;
.super Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/a/j;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/a/o;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/a/n;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Landroid/support/v4/a/n;->a:Landroid/support/v4/a/i;

    iget-object v0, v0, Landroid/support/v4/a/n;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Landroid/support/v4/a/i;->c(Landroid/support/v4/a/i;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Landroid/support/v4/a/n;->a:Landroid/support/v4/a/i;

    iget-object v0, v0, Landroid/support/v4/a/n;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/i;->b([Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

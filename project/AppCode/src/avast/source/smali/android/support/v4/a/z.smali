.class Landroid/support/v4/a/z;
.super Landroid/os/Handler;
.source "ModernAsyncTask.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/a/u;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    invoke-direct {p0}, Landroid/support/v4/a/z;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/a/y;

    .line 471
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 474
    :pswitch_0
    iget-object v1, v0, Landroid/support/v4/a/y;->a:Landroid/support/v4/a/t;

    iget-object v0, v0, Landroid/support/v4/a/y;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Landroid/support/v4/a/t;->c(Landroid/support/v4/a/t;Ljava/lang/Object;)V

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v1, v0, Landroid/support/v4/a/y;->a:Landroid/support/v4/a/t;

    iget-object v0, v0, Landroid/support/v4/a/y;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/support/v4/a/t;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

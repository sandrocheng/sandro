.class final Lcom/c/a/a/ab;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method synthetic constructor <init>()V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/c/a/a/ab;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 469
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 472
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/c/a/a/w;

    .line 473
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 485
    :goto_0
    return-void

    .line 476
    :pswitch_0
    iget-object v0, p0, Lcom/c/a/a/w;->a:Lcom/c/a/a/x;

    iget-object v1, p0, Lcom/c/a/a/w;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/c/a/a/x;->a(Lcom/c/a/a/x;)V

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v0, p0, Lcom/c/a/a/w;->a:Lcom/c/a/a/x;

    iget-object v0, p0, Lcom/c/a/a/w;->b:[Ljava/lang/Object;

    invoke-static {}, Lcom/c/a/a/x;->b()V

    goto :goto_0

    .line 482
    :pswitch_2
    iget-object v0, p0, Lcom/c/a/a/w;->a:Lcom/c/a/a/x;

    invoke-static {}, Lcom/c/a/a/x;->c()V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

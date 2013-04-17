.class final Lom;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lok;


# direct methods
.method constructor <init>(Lok;)V
    .locals 0

    iput-object p1, p0, Lom;->a:Lok;

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
    iget-object v0, p0, Lom;->a:Lok;

    invoke-static {v0}, Lok;->a(Lok;)V

    iget-object v0, p0, Lom;->a:Lok;

    iget-object v0, v0, Lok;->b:Landroid/content/Context;

    iget-object v1, p0, Lom;->a:Lok;

    iget-object v1, v1, Lok;->b:Landroid/content/Context;

    const v2, 0x7f0b02d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.class public final Ldx;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/powermanager/view/DeepSaveView;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/view/DeepSaveView;)V
    .locals 0

    iput-object p1, p0, Ldx;->a:Lcom/tencent/powermanager/view/DeepSaveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ldy;

    invoke-direct {v0, p0}, Ldy;-><init>(Ldx;)V

    invoke-virtual {v0}, Ldy;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ldx;->a:Lcom/tencent/powermanager/view/DeepSaveView;

    iget-object v1, p0, Ldx;->a:Lcom/tencent/powermanager/view/DeepSaveView;

    invoke-static {v1}, Lcom/tencent/powermanager/view/DeepSaveView;->b(Lcom/tencent/powermanager/view/DeepSaveView;)Lr;

    move-result-object v1

    invoke-virtual {v1}, Lr;->r()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/powermanager/view/DeepSaveView;->a(Lcom/tencent/powermanager/view/DeepSaveView;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

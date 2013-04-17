.class public final Laac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V
    .locals 0

    iput-object p1, p0, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v1, p0, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;F)F

    :cond_0
    iget-object v0, p0, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->a(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p0, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;F)F

    :cond_1
    iget-object v0, p0, Laac;->a:Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;->b(Lcom/tencent/qqpimsecure/service/ScreenEventReceiverEUP;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Laad;

    invoke-direct {v0, p0}, Laad;-><init>(Laac;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getCPUscale(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Laae;

    invoke-direct {v0, p0}, Laae;-><init>(Laac;)V

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getCPUscale(Lcom/tencent/tmsecure/utils/PhoneInfoUtil$CPUScaleListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

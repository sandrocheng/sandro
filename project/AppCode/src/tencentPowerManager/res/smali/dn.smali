.class public final Ldn;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;


# direct methods
.method public constructor <init>(Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;)V
    .locals 0

    iput-object p1, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a(Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->f:Z

    iget-object v0, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->c:Z

    iget-object v0, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    iget-object v1, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    iget v1, v1, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a:I

    iget-object v2, p0, Ldn;->a:Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;

    iget v2, v2, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->b:I

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

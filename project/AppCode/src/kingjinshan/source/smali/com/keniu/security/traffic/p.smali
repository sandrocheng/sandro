.class final Lcom/keniu/security/traffic/p;
.super Landroid/os/Handler;
.source "MultiDirectionSlidingDrawer.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;


# direct methods
.method synthetic constructor <init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)V
    .locals 1
    .parameter

    .prologue
    .line 1149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/traffic/p;-><init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;B)V

    return-void
.end method

.method private constructor <init>(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1149
    iput-object p1, p0, Lcom/keniu/security/traffic/p;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 1152
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1157
    :goto_0
    return-void

    .line 1154
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/traffic/p;->a:Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;

    invoke-static {v0}, Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;->c(Lcom/keniu/security/traffic/MultiDirectionSlidingDrawer;)V

    goto :goto_0

    .line 1152
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

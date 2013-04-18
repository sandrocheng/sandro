.class public final Lcom/jxphone/mosecurity/activity/t;
.super Landroid/os/Handler;
.source "BaseContactActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/jxphone/mosecurity/activity/t;->b:I

    .line 101
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 103
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget v1, p0, Lcom/jxphone/mosecurity/activity/t;->b:I

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->setRequestedOrientation(I)V

    .line 108
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->h:Lcom/jxphone/mosecurity/c/c;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v0, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v0, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-boolean v2, v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->j:Z

    .line 111
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const-class v3, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/t;->a:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->finish()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

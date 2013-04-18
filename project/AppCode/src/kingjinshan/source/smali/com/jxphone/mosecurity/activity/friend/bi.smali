.class final Lcom/jxphone/mosecurity/activity/friend/bi;
.super Landroid/os/Handler;
.source "PeopleSmsLogActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bi;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    check-cast v0, Lcom/jxphone/mosecurity/c/l;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->f()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bi;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V

    goto :goto_0
.end method

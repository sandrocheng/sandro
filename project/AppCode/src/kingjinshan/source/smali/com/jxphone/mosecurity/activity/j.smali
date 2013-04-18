.class final Lcom/jxphone/mosecurity/activity/j;
.super Lcom/jxphone/mosecurity/d/n;
.source "BaseContactActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/i;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/i;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/j;->a:Lcom/jxphone/mosecurity/activity/i;

    const v0, 0x7f0b0668

    invoke-direct {p0, p2, v0, p3}, Lcom/jxphone/mosecurity/d/n;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/j;->a:Lcom/jxphone/mosecurity/activity/i;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/i;->c:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    invoke-super {p0}, Lcom/jxphone/mosecurity/d/n;->a()V

    .line 302
    return-void
.end method

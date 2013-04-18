.class final Lcom/keniu/security/traffic/bn;
.super Ljava/lang/Object;
.source "TrafficMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 540
    iput-object p1, p0, Lcom/keniu/security/traffic/bn;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 545
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 546
    iget-object v1, p0, Lcom/keniu/security/traffic/bn;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 548
    const-string v1, "context"

    const-string v2, "Traffic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    iget-object v1, p0, Lcom/keniu/security/traffic/bn;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const/16 v2, 0x17

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 551
    return-void
.end method

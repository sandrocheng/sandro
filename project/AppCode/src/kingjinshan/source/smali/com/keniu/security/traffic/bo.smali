.class final Lcom/keniu/security/traffic/bo;
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
    .line 564
    iput-object p1, p0, Lcom/keniu/security/traffic/bo;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 569
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    iget-object v1, p0, Lcom/keniu/security/traffic/bo;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 572
    iget-object v1, p0, Lcom/keniu/security/traffic/bo;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

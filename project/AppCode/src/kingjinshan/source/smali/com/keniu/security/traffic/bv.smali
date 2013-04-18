.class final Lcom/keniu/security/traffic/bv;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/keniu/security/traffic/bv;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 559
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 560
    iget-object v1, p0, Lcom/keniu/security/traffic/bv;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-class v2, Lcom/keniu/security/traffic/AdjustAutoCalcActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 562
    iget-object v1, p0, Lcom/keniu/security/traffic/bv;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 563
    const/4 v0, 0x0

    return v0
.end method

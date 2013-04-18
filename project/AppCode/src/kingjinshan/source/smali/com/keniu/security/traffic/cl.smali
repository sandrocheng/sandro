.class final Lcom/keniu/security/traffic/cl;
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
    .line 385
    iput-object p1, p0, Lcom/keniu/security/traffic/cl;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 391
    iget-object v1, p0, Lcom/keniu/security/traffic/cl;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficMonthLimitSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/keniu/security/traffic/cl;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 394
    const/4 v0, 0x0

    return v0
.end method

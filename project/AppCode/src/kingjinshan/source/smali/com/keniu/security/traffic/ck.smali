.class final Lcom/keniu/security/traffic/ck;
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
    .line 358
    iput-object p1, p0, Lcom/keniu/security/traffic/ck;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/keniu/security/traffic/ck;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    const-string v1, "context"

    const-string v2, "RatesRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget-object v1, p0, Lcom/keniu/security/traffic/ck;->a:Lcom/keniu/security/traffic/TrafficSettingActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/keniu/security/traffic/TrafficSettingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 367
    const/4 v0, 0x0

    return v0
.end method

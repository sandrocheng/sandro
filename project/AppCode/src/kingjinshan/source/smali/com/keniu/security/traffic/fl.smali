.class final Lcom/keniu/security/traffic/fl;
.super Ljava/lang/Object;
.source "TrafficZiFeiSubSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/keniu/security/traffic/fl;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/keniu/security/traffic/fl;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSubProviceSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 257
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 258
    const-string v2, "type"

    const-string v3, "provice"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/keniu/security/traffic/fl;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    const/4 v0, 0x0

    return v0
.end method

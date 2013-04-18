.class final Lcom/keniu/security/traffic/em;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/keniu/security/traffic/em;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->c()V

    .line 546
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/traffic/em;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 549
    const-string v1, "fromSIMChange"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 550
    iget-object v1, p0, Lcom/keniu/security/traffic/em;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 551
    iget-object v0, p0, Lcom/keniu/security/traffic/em;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->finish()V

    .line 552
    return-void
.end method

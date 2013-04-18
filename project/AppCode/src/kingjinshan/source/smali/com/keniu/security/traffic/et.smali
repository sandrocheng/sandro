.class final Lcom/keniu/security/traffic/et;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/keniu/security/traffic/et;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 456
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->c()V

    .line 457
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/traffic/et;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const-string v1, "fromSIMChange"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/keniu/security/traffic/et;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->startActivity(Landroid/content/Intent;)V

    .line 462
    iget-object v0, p0, Lcom/keniu/security/traffic/et;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;->finish()V

    .line 463
    return-void
.end method

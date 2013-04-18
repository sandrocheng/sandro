.class final Lcom/ijinshan/kinghelper/firewall/as;
.super Ljava/lang/Object;
.source "FirewallSettingsNightActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/as;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->f:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/as;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/as;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

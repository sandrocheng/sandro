.class final Lcom/ijinshan/kinghelper/firewall/ak;
.super Ljava/lang/Object;
.source "FirewallSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ak;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ak;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsBlockActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ak;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    const/4 v0, 0x0

    return v0
.end method

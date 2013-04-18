.class final Lcom/ijinshan/kinghelper/firewall/g;
.super Ljava/lang/Object;
.source "FireWallSettingsNight2Activity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/g;->a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/g;->a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsKeysActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/g;->a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingsNight2Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    const/4 v0, 0x0

    return v0
.end method

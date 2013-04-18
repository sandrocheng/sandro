.class final Lcom/ijinshan/kinghelper/firewall/d;
.super Ljava/lang/Object;
.source "FireWallSettingS2Activity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/d;->a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 54
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/d;->a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS3Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/d;->a:Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FireWallSettingS2Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

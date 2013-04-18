.class final Lcom/keniu/security/protection/ui/w;
.super Ljava/lang/Object;
.source "PreventTheftSettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/keniu/security/protection/ui/w;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 4
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/keniu/security/protection/ui/w;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/protection/ui/w;->a:Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;

    const-class v3, Lcom/keniu/security/protection/ui/PreventTheftWhiteListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/keniu/security/protection/ui/PreventTheftSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

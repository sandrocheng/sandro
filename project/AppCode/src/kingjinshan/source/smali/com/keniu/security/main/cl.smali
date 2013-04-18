.class final Lcom/keniu/security/main/cl;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/SettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/keniu/security/main/cl;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/keniu/security/main/cl;->a:Lcom/keniu/security/main/SettingActivity;

    const-class v2, Lcom/keniu/security/commumgr/CallLocateSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/keniu/security/main/cl;->a:Lcom/keniu/security/main/SettingActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/main/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 137
    const/4 v0, 0x0

    return v0
.end method

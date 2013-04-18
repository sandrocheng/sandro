.class final Lcom/keniu/security/process/a;
.super Ljava/lang/Object;
.source "ProcessConfigActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessConfigActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/process/ProcessConfigActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/keniu/security/process/a;->a:Lcom/keniu/security/process/ProcessConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/process/a;->a:Lcom/keniu/security/process/ProcessConfigActivity;

    const-class v2, Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v1, p0, Lcom/keniu/security/process/a;->a:Lcom/keniu/security/process/ProcessConfigActivity;

    invoke-virtual {v1, v0}, Lcom/keniu/security/process/ProcessConfigActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    const/4 v0, 0x0

    return v0
.end method

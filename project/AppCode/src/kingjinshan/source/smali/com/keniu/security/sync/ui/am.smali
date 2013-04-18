.class final Lcom/keniu/security/sync/ui/am;
.super Ljava/lang/Object;
.source "SyncRestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)[Z

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/r;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    const v1, 0x7f0b08a8

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    .line 135
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->c(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->d(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    const-string v1, "synco"

    const-string v2, "8"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->e(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    const-string v1, "synco"

    const-string v2, "8"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/am;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    const-class v3, Lcom/keniu/security/sync/ui/LoginAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

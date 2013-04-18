.class final Lcom/keniu/security/sync/ui/s;
.super Ljava/lang/Object;
.source "SyncBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncBackupActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;)[Z

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/r;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const v1, 0x7f0b08a7

    invoke-static {v0, v1}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;I)V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "session_id"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->d(Lcom/keniu/security/sync/ui/SyncBackupActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const-string v1, "synco"

    const-string v2, "7"

    const-string v3, "0"

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->e(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const-string v1, "synco"

    const-string v2, "7"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/keniu/security/sync/ui/s;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    const-class v3, Lcom/keniu/security/sync/ui/LoginAct;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

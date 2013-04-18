.class final Lcom/keniu/security/sync/ui/t;
.super Ljava/lang/Object;
.source "SyncBackupActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncBackupActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/keniu/security/sync/ui/t;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 155
    if-eqz p2, :cond_1

    .line 156
    iget-object v0, p0, Lcom/keniu/security/sync/ui/t;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "no_more_backup_tip"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/t;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "no_more_backup_tip"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/t;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "no_more_backup_tip"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/ui/t;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->c(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Lcom/keniu/security/sync/k;

    move-result-object v0

    const-string v1, "no_more_backup_tip"

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

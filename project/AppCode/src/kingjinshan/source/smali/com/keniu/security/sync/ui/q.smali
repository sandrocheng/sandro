.class final Lcom/keniu/security/sync/ui/q;
.super Ljava/lang/Thread;
.source "SyncBackupActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncBackupActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/keniu/security/sync/ui/q;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/q;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->a(Lcom/keniu/security/sync/ui/SyncBackupActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jt;

    .line 115
    return-void
.end method

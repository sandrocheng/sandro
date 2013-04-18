.class final Lcom/keniu/security/sync/ui/ak;
.super Ljava/lang/Thread;
.source "SyncRestoreActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ak;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 101
    const-string v0, ">>>> logout in the thread"

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v0, Lcom/keniu/security/sync/a/a;

    invoke-direct {v0}, Lcom/keniu/security/sync/a/a;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/sync/ui/ak;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->a(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/sync/a/a;->a(Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/jt;

    .line 103
    return-void
.end method

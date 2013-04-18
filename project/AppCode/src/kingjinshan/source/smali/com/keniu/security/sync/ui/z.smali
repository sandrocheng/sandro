.class final Lcom/keniu/security/sync/ui/z;
.super Ljava/lang/Object;
.source "SyncHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncHistoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/keniu/security/sync/ui/z;->a:Lcom/keniu/security/sync/ui/SyncHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/keniu/security/sync/ui/z;->a:Lcom/keniu/security/sync/ui/SyncHistoryActivity;

    const-string v1, "\u8bfb\u53d6\u65e5\u5fd7\u5931\u8d25!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method

.class final Lcom/keniu/security/sync/ui/x;
.super Ljava/lang/Object;
.source "SyncBackupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/sync/ui/w;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/w;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/keniu/security/sync/ui/x;->b:Lcom/keniu/security/sync/ui/w;

    iput p2, p0, Lcom/keniu/security/sync/ui/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lcom/keniu/security/sync/ui/x;->b:Lcom/keniu/security/sync/ui/w;

    iget-object v0, v0, Lcom/keniu/security/sync/ui/w;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/sync/ui/x;->a:I

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 385
    return-void
.end method

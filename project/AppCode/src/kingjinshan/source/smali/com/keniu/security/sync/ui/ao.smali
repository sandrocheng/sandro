.class final Lcom/keniu/security/sync/ui/ao;
.super Ljava/lang/Object;
.source "SyncRestoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/keniu/security/sync/ui/an;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/an;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ao;->b:Lcom/keniu/security/sync/ui/an;

    iput p2, p0, Lcom/keniu/security/sync/ui/ao;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ao;->b:Lcom/keniu/security/sync/ui/an;

    iget-object v0, v0, Lcom/keniu/security/sync/ui/an;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)[Z

    move-result-object v0

    iget v1, p0, Lcom/keniu/security/sync/ui/ao;->a:I

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 172
    return-void
.end method

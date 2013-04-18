.class final Lcom/keniu/security/sync/ui/al;
.super Ljava/lang/Object;
.source "SyncRestoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/keniu/security/sync/ui/al;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 112
    const v0, 0x7f0800b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 113
    iget-object v1, p0, Lcom/keniu/security/sync/ui/al;->a:Lcom/keniu/security/sync/ui/SyncRestoreActivity;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncRestoreActivity;->b(Lcom/keniu/security/sync/ui/SyncRestoreActivity;)[Z

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    aput-boolean v2, v1, p3

    .line 114
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    return-void

    :cond_0
    move v2, v3

    .line 113
    goto :goto_0

    :cond_1
    move v1, v3

    .line 114
    goto :goto_1
.end method

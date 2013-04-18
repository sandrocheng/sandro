.class public final Lcom/keniu/security/sync/ui/w;
.super Landroid/widget/SimpleAdapter;
.source "SyncBackupActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncBackupActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/sync/ui/SyncBackupActivity;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/keniu/security/sync/ui/w;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    .line 373
    const v3, 0x7f030087

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 374
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 378
    const v0, 0x7f0800b2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 380
    iget-object v2, p0, Lcom/keniu/security/sync/ui/w;->a:Lcom/keniu/security/sync/ui/SyncBackupActivity;

    invoke-static {v2}, Lcom/keniu/security/sync/ui/SyncBackupActivity;->b(Lcom/keniu/security/sync/ui/SyncBackupActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 381
    new-instance v2, Lcom/keniu/security/sync/ui/x;

    invoke-direct {v2, p0, p1}, Lcom/keniu/security/sync/ui/x;-><init>(Lcom/keniu/security/sync/ui/w;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-object v1
.end method

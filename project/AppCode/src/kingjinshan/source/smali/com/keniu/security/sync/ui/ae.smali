.class final Lcom/keniu/security/sync/ui/ae;
.super Ljava/lang/Object;
.source "SyncRecordsAct.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncRecordsAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncRecordsAct;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ae;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ae;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/ae;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    invoke-static {v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->a(Lcom/keniu/security/sync/ui/SyncRecordsAct;I)I

    .line 47
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ae;->a:Lcom/keniu/security/sync/ui/SyncRecordsAct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/ui/SyncRecordsAct;->showDialog(I)V

    .line 48
    return-void
.end method

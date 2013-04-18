.class final Lcom/keniu/security/sync/ui/ac;
.super Ljava/lang/Object;
.source "SyncMainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/SyncMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/SyncMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/keniu/security/sync/ui/ac;->a:Lcom/keniu/security/sync/ui/SyncMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/keniu/security/sync/ui/ac;->a:Lcom/keniu/security/sync/ui/SyncMainActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/ui/SyncMainActivity;->a(Lcom/keniu/security/sync/ui/SyncMainActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    const-string v0, "VMAP_ITEM_CLASS"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/sync/ui/ad;

    invoke-virtual {p0}, Lcom/keniu/security/sync/ui/ad;->a()V

    .line 154
    return-void
.end method

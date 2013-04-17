.class public final Lads;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

.field private synthetic c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;Ljava/util/ArrayList;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 0

    iput-object p1, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    iput-object p2, p0, Lads;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lads;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lads;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-ltz p3, :cond_0

    iget-object v0, p0, Lads;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x6765

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    iget-object v1, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;)Ljb;

    move-result-object v1

    iget-object v2, p0, Lads;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {v1, v2}, Ljb;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v1, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;)Ljb;

    move-result-object v1

    iget-object v2, p0, Lads;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iget v0, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v1, v2, v0}, Ljb;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    iget-object v1, p0, Lads;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->a(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v0, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    iget-object v1, p0, Lads;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->b(Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    iget-object v0, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    const v1, 0x7f0b064c

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lads;->c:Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/NumberMarkDialog;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lads;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    goto :goto_0
.end method

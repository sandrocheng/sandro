.class final Lbse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

.field private synthetic b:Z

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbsb;


# direct methods
.method constructor <init>(Lbsb;Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;ZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbse;->d:Lbsb;

    iput-object p2, p0, Lbse;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iput-boolean p3, p0, Lbse;->b:Z

    iput-object p4, p0, Lbse;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lbse;->a:Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;

    iget-boolean v0, p0, Lbse;->b:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/PreferenceAdapterModel;->setChecked(Z)V

    iget-object v0, p0, Lbse;->d:Lbsb;

    invoke-static {v0}, Lbsb;->c(Lbsb;)Lho;

    move-result-object v0

    iget-boolean v3, p0, Lbse;->b:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lho;->p(Z)V

    iget-object v0, p0, Lbse;->d:Lbsb;

    invoke-static {v0}, Lbsb;->b(Lbsb;)V

    iget-object v0, p0, Lbse;->d:Lbsb;

    invoke-virtual {v0}, Lbsb;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lbse;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

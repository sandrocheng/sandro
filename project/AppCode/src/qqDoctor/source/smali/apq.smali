.class final Lapq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lapf;


# direct methods
.method constructor <init>(Lapf;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lapq;->b:Lapf;

    iput-object p2, p0, Lapq;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lapq;->b:Lapf;

    invoke-static {v1}, Lapf;->t(Lapf;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lapf;->a(ZLandroid/content/Context;)V

    iget-object v0, p0, Lapq;->b:Lapf;

    invoke-static {v0}, Lapf;->s(Lapf;)V

    iget-object v0, p0, Lapq;->b:Lapf;

    invoke-virtual {v0}, Lapf;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lapq;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lapq;->b:Lapf;

    invoke-static {v0}, Lapf;->u(Lapf;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b09b1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    return-void
.end method

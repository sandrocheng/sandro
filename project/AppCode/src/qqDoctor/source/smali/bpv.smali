.class final Lbpv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic d:Lbpu;


# direct methods
.method constructor <init>(Lbpu;Lkw;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbpv;->d:Lbpu;

    iput-object p2, p0, Lbpv;->a:Lkw;

    iput-object p3, p0, Lbpv;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p4, p0, Lbpv;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbpv;->d:Lbpu;

    iget-object v1, p0, Lbpv;->a:Lkw;

    invoke-static {v0, v1}, Lbpu;->a(Lbpu;Lkw;)V

    iget-object v0, p0, Lbpv;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpv;->d:Lbpu;

    invoke-static {v0}, Lbpu;->a(Lbpu;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bW()V

    :cond_0
    iget-object v0, p0, Lbpv;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

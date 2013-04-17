.class final Lauo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:I

.field private synthetic d:Latz;


# direct methods
.method constructor <init>(Latz;Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 1

    iput-object p1, p0, Lauo;->d:Latz;

    iput-object p2, p0, Lauo;->a:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p3, p0, Lauo;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/16 v0, 0x3ed

    iput v0, p0, Lauo;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lauo;->d:Latz;

    invoke-static {v0}, Latz;->p(Latz;)Lho;

    move-result-object v1

    iget-object v0, p0, Lauo;->a:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lho;->n(Z)V

    iget-object v0, p0, Lauo;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lauo;->d:Latz;

    iget v1, p0, Lauo;->c:I

    invoke-static {v0, v1}, Latz;->a(Latz;I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

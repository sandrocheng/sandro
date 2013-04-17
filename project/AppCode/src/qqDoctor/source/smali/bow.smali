.class final Lbow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic c:I

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lbov;


# direct methods
.method constructor <init>(Lbov;ZLcom/tencent/qqpimsecure/uilib/view/CheckBoxView;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbow;->e:Lbov;

    iput-boolean p2, p0, Lbow;->a:Z

    iput-object p3, p0, Lbow;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput p4, p0, Lbow;->c:I

    iput-object p5, p0, Lbow;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lbow;->a:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbow;->e:Lbov;

    iget-object v2, v2, Lbov;->a:Lbot;

    invoke-static {v2}, Lbot;->B(Lbot;)Lho;

    move-result-object v2

    iget-object v3, p0, Lbow;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lho;->m(Z)V

    :goto_1
    iget-object v0, p0, Lbow;->e:Lbov;

    iget-object v0, v0, Lbov;->a:Lbot;

    iget v1, p0, Lbow;->c:I

    invoke-static {v0, v1}, Lbot;->c(Lbot;I)V

    iget-object v0, p0, Lbow;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lbow;->e:Lbov;

    iget-object v2, v2, Lbov;->a:Lbot;

    invoke-static {v2}, Lbot;->B(Lbot;)Lho;

    move-result-object v2

    iget-object v3, p0, Lbow;->b:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lho;->l(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

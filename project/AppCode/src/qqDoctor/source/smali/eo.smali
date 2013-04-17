.class public final Leo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

.field private synthetic b:Z

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;ZLcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Ljava/lang/String;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Leo;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    iput-boolean p2, p0, Leo;->b:Z

    iput-object p3, p0, Leo;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object p4, p0, Leo;->d:Ljava/lang/String;

    iput-object p5, p0, Leo;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Leo;->a:Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;->onCancel()V

    iget-boolean v0, p0, Leo;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Leo;->c:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iget-object v1, p0, Leo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->F(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Leo;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

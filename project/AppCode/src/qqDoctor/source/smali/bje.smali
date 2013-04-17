.class final Lbje;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qqpimsecure/uilib/service/IRetryListener;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:I

.field private synthetic c:I

.field private synthetic d:Lbjd;


# direct methods
.method constructor <init>(Lbjd;Lmk;II)V
    .locals 0

    iput-object p1, p0, Lbje;->d:Lbjd;

    iput-object p2, p0, Lbje;->a:Lmk;

    iput p3, p0, Lbje;->b:I

    iput p4, p0, Lbje;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 0

    return-void
.end method

.method public final onRetry()V
    .locals 4

    iget-object v0, p0, Lbje;->a:Lmk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmk;->l:Z

    iget-object v0, p0, Lbje;->d:Lbjd;

    iget-object v0, v0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    invoke-virtual {v0}, Lait;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lbje;->b:I

    iget-object v2, p0, Lbje;->a:Lmk;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lbje;->d:Lbjd;

    iget-object v0, v0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    invoke-virtual {v0}, Lait;->notifyDataSetChanged()V

    iget-object v0, p0, Lbje;->d:Lbjd;

    iget-object v0, v0, Lbjd;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->d(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lui;

    move-result-object v0

    new-instance v1, Lml;

    iget-object v2, p0, Lbje;->a:Lmk;

    iget v3, p0, Lbje;->c:I

    invoke-direct {v1, v2, v3}, Lml;-><init>(Lmk;I)V

    invoke-virtual {v0, v1}, Lui;->a(Lml;)V

    return-void
.end method

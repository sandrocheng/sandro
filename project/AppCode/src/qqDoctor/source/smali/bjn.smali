.class public final Lbjn;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)V
    .locals 0

    iput-object p1, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljp;

    move-result-object v0

    iget-object v1, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v2, v0, Lmk;->id:I

    iget-object v3, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->f(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v2}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->g(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)I

    move-result v2

    iput v2, v0, Lmk;->h:I

    :cond_0
    iget-object v0, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V

    iget-object v0, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0, v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->c(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;Ljava/util/List;)V

    iget-object v0, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    invoke-virtual {v0, v1}, Lait;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbjn;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    invoke-virtual {v0}, Lait;->notifyDataSetChanged()V

    return-void
.end method

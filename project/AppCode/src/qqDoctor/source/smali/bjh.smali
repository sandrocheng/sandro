.class final Lbjh;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lbjg;


# direct methods
.method constructor <init>(Lbjg;)V
    .locals 0

    iput-object p1, p0, Lbjh;->a:Lbjg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbjh;->a:Lbjg;

    iget-object v0, v0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    iget-object v1, p0, Lbjh;->a:Lbjg;

    iget-object v1, v1, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    iget-object v1, v1, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lait;->a(Ljava/util/List;)V

    iget-object v0, p0, Lbjh;->a:Lbjg;

    iget-object v0, v0, Lbjg;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->h(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Lait;

    move-result-object v0

    invoke-virtual {v0}, Lait;->notifyDataSetChanged()V

    return-void
.end method

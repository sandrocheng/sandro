.class final Lbiy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbix;


# direct methods
.method constructor <init>(Lbix;)V
    .locals 0

    iput-object p1, p0, Lbiy;->a:Lbix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lbiy;->a:Lbix;

    iget-object v0, v0, Lbix;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljp;

    move-result-object v0

    iget-object v1, p0, Lbiy;->a:Lbix;

    iget-object v1, v1, Lbix;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v1}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->a(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljp;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v3, v0, Lmk;->a:I

    if-eq v3, v4, :cond_0

    iput v4, v0, Lmk;->a:I

    iget-object v3, p0, Lbiy;->a:Lbix;

    iget-object v3, v3, Lbix;->a:Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;

    invoke-static {v3}, Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;->b(Lcom/tencent/qqpimsecure/view/securespace/SecureSmsDialogueView;)Ljp;

    move-result-object v3

    iget v0, v0, Lmk;->id:I

    invoke-virtual {v3, v0}, Ljp;->b(I)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

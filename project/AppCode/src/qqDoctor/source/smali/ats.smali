.class final Lats;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Latn;


# direct methods
.method constructor <init>(Latn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lats;->b:Latn;

    iput-object p2, p0, Lats;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lats;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lats;->b:Latn;

    invoke-static {v0}, Latn;->q(Latn;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lats;->b:Latn;

    invoke-static {v1}, Latn;->z(Latn;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lats;->b:Latn;

    invoke-static {v0}, Latn;->A(Latn;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lats;->b:Latn;

    invoke-static {v2}, Latn;->B(Latn;)Landroid/os/Messenger;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lfi;->b(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Messenger;)V

    return-void
.end method

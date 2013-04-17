.class final Lasg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llj;

.field final synthetic b:Larz;

.field private synthetic c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Larz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Llj;)V
    .locals 0

    iput-object p1, p0, Lasg;->b:Larz;

    iput-object p2, p0, Lasg;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p3, p0, Lasg;->a:Llj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lasg;->c:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lasg;->b:Larz;

    iget-object v0, v0, Larz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lasg;->b:Larz;

    invoke-static {v1}, Larz;->p(Larz;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b09e8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lasg;->b:Larz;

    iget-object v0, v0, Larz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lash;

    invoke-direct {v1, p0}, Lash;-><init>(Lasg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

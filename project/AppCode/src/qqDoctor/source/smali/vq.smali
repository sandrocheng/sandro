.class final Lvq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Llf;

.field final synthetic b:Lvk$b;

.field final synthetic c:Lvk;


# direct methods
.method constructor <init>(Lvk;Llf;Lvk$b;)V
    .locals 0

    iput-object p1, p0, Lvq;->c:Lvk;

    iput-object p2, p0, Lvq;->a:Llf;

    iput-object p3, p0, Lvq;->b:Lvk$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lvq;->c:Lvk;

    iget-object v0, v0, Lvk;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b01af

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lvq;->a:Llf;

    iget v0, v0, Llf;->b:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lvq;->c:Lvk;

    iget-object v0, v0, Lvk;->d:Ljava/lang/String;

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lvq;->a:Llf;

    iget-object v4, v4, Llf;->phonenum:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b0045

    new-instance v2, Lvr;

    invoke-direct {v2, p0, v1}, Lvr;-><init>(Lvq;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Lvs;

    invoke-direct {v2, p0, v1}, Lvs;-><init>(Lvq;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lvq;->c:Lvk;

    iget-object v0, v0, Lvk;->i:Landroid/os/Handler;

    new-instance v2, Lvn;

    invoke-direct {v2, v1}, Lvn;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lvq;->c:Lvk;

    iget-object v0, v0, Lvk;->e:Ljava/lang/String;

    goto :goto_0
.end method

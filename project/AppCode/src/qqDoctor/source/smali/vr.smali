.class final Lvr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lvq;


# direct methods
.method constructor <init>(Lvq;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lvr;->b:Lvq;

    iput-object p2, p0, Lvr;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lvr;->b:Lvq;

    iget-object v0, v0, Lvq;->c:Lvk;

    iget-object v1, p0, Lvr;->b:Lvq;

    iget-object v1, v1, Lvq;->a:Llf;

    invoke-static {v0, v1}, Lvk;->a(Lvk;Llf;)Lhq;

    move-result-object v0

    iget-object v1, p0, Lvr;->b:Lvq;

    iget-object v1, v1, Lvq;->c:Lvk;

    iget-object v2, v1, Lvk;->c:Lhq;

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lvk;->b:Lhq;

    :goto_0
    iget-object v1, p0, Lvr;->b:Lvq;

    iget-object v1, v1, Lvq;->a:Llf;

    iget-object v1, v1, Llf;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lhq;->a(Ljava/lang/String;)Llf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lhq;->c(Llf;)Z

    :cond_0
    iget-object v0, p0, Lvr;->b:Lvq;

    iget-object v0, v0, Lvq;->b:Lvk$b;

    invoke-interface {v0}, Lvk$b;->a()V

    iget-object v0, p0, Lvr;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_1
    iget-object v0, v1, Lvk;->c:Lhq;

    goto :goto_0
.end method

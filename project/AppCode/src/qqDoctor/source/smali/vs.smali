.class final Lvs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lvq;


# direct methods
.method constructor <init>(Lvq;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lvs;->b:Lvq;

    iput-object p2, p0, Lvs;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lvs;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lvs;->b:Lvq;

    iget-object v0, v0, Lvq;->c:Lvk;

    iget-object v1, p0, Lvs;->b:Lvq;

    iget-object v1, v1, Lvq;->a:Llf;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lvk;->a(Lvk;Llf;Z)V

    return-void
.end method

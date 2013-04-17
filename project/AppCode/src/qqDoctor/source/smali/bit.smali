.class final Lbit;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lmk;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbip;


# direct methods
.method constructor <init>(Lbip;Lmk;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbit;->c:Lbip;

    iput-object p2, p0, Lbit;->a:Lmk;

    iput-object p3, p0, Lbit;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbit;->c:Lbip;

    iget-object v1, p0, Lbit;->a:Lmk;

    invoke-static {v0, v1}, Lbip;->b(Lbip;Lmk;)V

    iget-object v0, p0, Lbit;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

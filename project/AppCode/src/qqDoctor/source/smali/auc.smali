.class final Lauc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Latz;


# direct methods
.method constructor <init>(Latz;)V
    .locals 0

    iput-object p1, p0, Lauc;->a:Latz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lauc;->a:Latz;

    invoke-static {v0}, Latz;->t(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lauc;->a:Latz;

    invoke-static {v0}, Latz;->t(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lauc;->a:Latz;

    invoke-static {v0}, Latz;->u(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    return-void
.end method

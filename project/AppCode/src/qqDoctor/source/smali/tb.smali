.class final Ltb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lta;


# direct methods
.method constructor <init>(Lta;)V
    .locals 0

    iput-object p1, p0, Ltb;->a:Lta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ltb;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltb;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Ltb;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    const/4 v1, 0x0

    iput-object v1, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    return-void
.end method

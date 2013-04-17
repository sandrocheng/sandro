.class final Late;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Latb;


# direct methods
.method constructor <init>(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Late;->b:Latb;

    iput-object p2, p0, Late;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Late;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Late;->b:Latb;

    invoke-static {v0}, Latb;->f(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Late;->b:Latb;

    iget-object v1, p0, Late;->b:Latb;

    invoke-static {v1}, Latb;->g(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v1

    invoke-static {v0, v1}, Latb;->a(Latb;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Late;->b:Latb;

    invoke-static {v0}, Latb;->f(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Late;->b:Latb;

    invoke-static {v0}, Latb;->f(Latb;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0
.end method

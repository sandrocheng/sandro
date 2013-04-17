.class final Lbhf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbhc;


# direct methods
.method constructor <init>(Lbhc;)V
    .locals 0

    iput-object p1, p0, Lbhf;->a:Lbhc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lbhf;->a:Lbhc;

    invoke-static {v0}, Lbhc;->c(Lbhc;)Lcd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhf;->a:Lbhc;

    invoke-static {v0}, Lbhc;->c(Lbhc;)Lcd;

    move-result-object v0

    invoke-interface {v0}, Lcd;->e()V

    :cond_0
    iget-object v0, p0, Lbhf;->a:Lbhc;

    invoke-static {v0}, Lbhc;->d(Lbhc;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhf;->a:Lbhc;

    invoke-static {v0}, Lbhc;->d(Lbhc;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

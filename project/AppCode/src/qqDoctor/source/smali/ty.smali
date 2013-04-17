.class final Lty;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ldv;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lsy;


# direct methods
.method constructor <init>(Lsy;ILjava/util/List;Ldv;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 1

    iput-object p1, p0, Lty;->e:Lsy;

    const/4 v0, 0x1

    iput v0, p0, Lty;->a:I

    iput-object p3, p0, Lty;->b:Ljava/util/List;

    iput-object p4, p0, Lty;->c:Ldv;

    iput-object p5, p0, Lty;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lty;->e:Lsy;

    iget v2, p0, Lty;->a:I

    iget-object v3, p0, Lty;->b:Ljava/util/List;

    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const v0, 0x7f0b01c0

    :goto_1
    iget-object v2, p0, Lty;->e:Lsy;

    iget-object v2, v2, Lsy;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lha;->a(Landroid/content/Context;I)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lty;->c:Ldv;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ldv;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lty;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :pswitch_0
    iget-object v0, v1, Lsy;->c:Lhi;

    invoke-virtual {v0, v3}, Lhi;->a(Ljava/util/List;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :pswitch_1
    iget-object v0, v1, Lsy;->d:Ljp;

    invoke-virtual {v0, v3}, Ljp;->c(Ljava/util/List;)Z

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0b01c1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

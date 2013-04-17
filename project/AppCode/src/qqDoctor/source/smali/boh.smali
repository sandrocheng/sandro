.class final Lboh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbod;


# direct methods
.method constructor <init>(Lbod;Lkw;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lboh;->c:Lbod;

    iput-object p2, p0, Lboh;->a:Lkw;

    iput-object p3, p0, Lboh;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lboh;->a:Lkw;

    invoke-virtual {v0}, Lkw;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lboh;->c:Lbod;

    iget-object v1, p0, Lboh;->a:Lkw;

    const v2, 0x1e8484

    invoke-virtual {v0, v1, v2}, Lbod;->a(Lkw;I)V

    :goto_0
    iget-object v0, p0, Lboh;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lboh;->c:Lbod;

    iget-object v1, p0, Lboh;->a:Lkw;

    invoke-virtual {v0, v1}, Lbod;->a(Lkw;)V

    goto :goto_0
.end method

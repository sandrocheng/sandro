.class public final Lzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lay;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Lay;)V
    .locals 1

    iput-object p1, p0, Lzi;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v0, 0x0

    iput-object v0, p0, Lzi;->b:Lay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzi;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lzi;->b:Lay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzi;->b:Lay;

    :cond_0
    return-void
.end method

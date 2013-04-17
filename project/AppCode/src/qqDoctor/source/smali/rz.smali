.class public final Lrz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lrx;


# direct methods
.method public constructor <init>(Lrx;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lrz;->b:Lrx;

    iput-object p2, p0, Lrz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lrz;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    new-instance v0, Lss;

    iget-object v1, p0, Lrz;->b:Lrx;

    iget-object v1, v1, Lrx;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lss;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lss;->c()V

    return-void
.end method

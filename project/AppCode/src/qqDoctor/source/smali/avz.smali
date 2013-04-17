.class final Lavz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lavu;


# direct methods
.method constructor <init>(Lavu;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lavz;->c:Lavu;

    iput p2, p0, Lavz;->a:I

    iput-object p3, p0, Lavz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6735

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lavz;->c:Lavu;

    iget v1, p0, Lavz;->a:I

    invoke-virtual {v0, v1}, Lavu;->b(I)Z

    iget-object v0, p0, Lavz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

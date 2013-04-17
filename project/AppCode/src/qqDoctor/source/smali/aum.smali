.class final Laum;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:I

.field private synthetic c:Latz;


# direct methods
.method constructor <init>(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 1

    iput-object p1, p0, Laum;->c:Latz;

    iput-object p2, p0, Laum;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/16 v0, 0x3ed

    iput v0, p0, Laum;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laum;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Laum;->c:Latz;

    iget v1, p0, Laum;->b:I

    invoke-static {v0, v1}, Latz;->a(Latz;I)V

    return-void
.end method

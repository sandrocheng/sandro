.class final Lavm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lavl;


# direct methods
.method constructor <init>(Lavl;ILcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lavm;->c:Lavl;

    iput p2, p0, Lavm;->a:I

    iput-object p3, p0, Lavm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lavm;->c:Lavl;

    iget-object v0, v0, Lavl;->a:Lavh;

    iget v1, p0, Lavm;->a:I

    invoke-static {v0, v1}, Lavh;->a(Lavh;I)Ljava/lang/String;

    iget-object v0, p0, Lavm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

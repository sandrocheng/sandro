.class final Ldu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ldu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p2, p0, Ldu;->b:Ljava/lang/String;

    iput-object p3, p0, Ldu;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ldu;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Ldu;->b:Ljava/lang/String;

    iget-object v1, p0, Ldu;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lds;->b(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.class final Lbel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Lbej;


# direct methods
.method constructor <init>(Lbej;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbel;->d:Lbej;

    iput-object p2, p0, Lbel;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p3, p0, Lbel;->b:Ljava/lang/String;

    iput-object p4, p0, Lbel;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbel;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbel;->d:Lbej;

    iget-object v1, p0, Lbel;->b:Ljava/lang/String;

    iget-object v2, p0, Lbel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbej;->a(Lbej;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

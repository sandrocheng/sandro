.class final Lbol;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/ArrayList;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbok;


# direct methods
.method constructor <init>(Lbok;Ljava/util/ArrayList;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbol;->c:Lbok;

    iput-object p2, p0, Lbol;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lbol;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbol;->c:Lbok;

    iget-object v1, p0, Lbol;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lbok;->f(Ljava/util/List;)V

    iget-object v0, p0, Lbol;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

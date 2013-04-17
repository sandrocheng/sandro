.class final Lamu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ljava/util/List;

.field private synthetic d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic e:Lams;


# direct methods
.method constructor <init>(Lams;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lamu;->e:Lams;

    iput-object p2, p0, Lamu;->a:Ljava/util/List;

    iput-object p3, p0, Lamu;->b:Ljava/util/List;

    iput-object p4, p0, Lamu;->c:Ljava/util/List;

    iput-object p5, p0, Lamu;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lamu;->e:Lams;

    iget-object v1, p0, Lamu;->a:Ljava/util/List;

    iget-object v2, p0, Lamu;->b:Ljava/util/List;

    iget-object v3, p0, Lamu;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lams;->a(Lams;Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lamu;->d:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

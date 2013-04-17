.class final Lbmm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic c:Lbmj;


# direct methods
.method constructor <init>(Lbmj;Ljava/util/List;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbmm;->c:Lbmj;

    iput-object p2, p0, Lbmm;->a:Ljava/util/List;

    iput-object p3, p0, Lbmm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbmm;->c:Lbmj;

    iget-object v1, p0, Lbmm;->c:Lbmj;

    iget-object v1, v1, Lbmj;->c:Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v2, p0, Lbmm;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lgx;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/tmsecure/module/software/SoftwareManager;Ljava/util/List;)V

    iget-object v0, p0, Lbmm;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method

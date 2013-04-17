.class final Lawd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lavu;


# direct methods
.method constructor <init>(Lavu;)V
    .locals 0

    iput-object p1, p0, Lawd;->a:Lavu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lawd;->a:Lavu;

    invoke-static {v0}, Lavu;->t(Lavu;)Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/PinnedHeaderListView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lawd;->a:Lavu;

    invoke-static {v1}, Lavu;->u(Lavu;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget-object v1, p0, Lawd;->a:Lavu;

    invoke-static {v1}, Lavu;->j(Lavu;)Lsy;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lawd;->a:Lavu;

    invoke-static {v3}, Lavu;->i(Lavu;)Ldv;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;Ldv;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66cc

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

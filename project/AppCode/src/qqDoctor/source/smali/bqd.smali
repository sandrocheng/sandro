.class final Lbqd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lbqc;


# direct methods
.method constructor <init>(Lbqc;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lbqd;->b:Lbqc;

    iput-object p2, p0, Lbqd;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbqd;->b:Lbqc;

    iget-object v0, v0, Lbqc;->a:Lbqb;

    invoke-static {v0}, Lbqb;->b(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v2, p0, Lbqd;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbqd;->b:Lbqc;

    iget-object v0, v0, Lbqc;->a:Lbqb;

    invoke-static {v0}, Lbqb;->b(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbqd;->b:Lbqc;

    iget-object v0, v0, Lbqc;->a:Lbqb;

    invoke-static {v0}, Lbqb;->b(Lbqb;)Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    return-void
.end method

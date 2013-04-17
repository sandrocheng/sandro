.class final Lard;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field private synthetic a:Larb;


# direct methods
.method constructor <init>(Larb;)V
    .locals 0

    iput-object p1, p0, Lard;->a:Larb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2

    iget-object v0, p0, Lard;->a:Larb;

    invoke-static {v0}, Larb;->a(Larb;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v0, p0, Lard;->a:Larb;

    invoke-static {v0}, Larb;->a(Larb;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/phoneservice/UsefulNumberEntity;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

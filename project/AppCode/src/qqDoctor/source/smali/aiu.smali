.class final Laiu;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Lait;


# direct methods
.method constructor <init>(Lait;II)V
    .locals 0

    iput-object p1, p0, Laiu;->c:Lait;

    iput p2, p0, Laiu;->a:I

    iput p3, p0, Laiu;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lfo;

    iget-object v1, p0, Laiu;->c:Lait;

    invoke-static {v1}, Lait;->a(Lait;)Landroid/widget/ListView;

    move-result-object v1

    iget v2, p1, Lmp;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lfo;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v0, Lfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/SecureSpaceMMSView;->setBitmap(Ljava/util/ArrayList;)V

    iget-object v1, p0, Laiu;->c:Lait;

    invoke-static {v1}, Lait;->b(Lait;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Laiu;->a:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, v0, Lfo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Laiu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

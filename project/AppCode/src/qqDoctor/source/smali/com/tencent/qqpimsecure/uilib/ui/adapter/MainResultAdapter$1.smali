.class Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    iput p2, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinish(Lmp;)V
    .locals 4

    if-eqz p1, :cond_1

    check-cast p1, Llv;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    #getter for: Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->access$000(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p1, Llv;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    #getter for: Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->access$100(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->this$0:Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;

    #getter for: Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->mDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;->access$100(Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/MainResultAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/SoftResultModel;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

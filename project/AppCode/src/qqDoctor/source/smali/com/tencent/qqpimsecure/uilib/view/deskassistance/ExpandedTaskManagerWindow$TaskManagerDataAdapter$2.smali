.class Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$2;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field final synthetic this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$2;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinish(Lmp;)V
    .locals 4

    check-cast p1, Llv;

    iget-object v0, p1, Lmp;->h:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;

    iget-object v2, p1, Llv;->f:Landroid/graphics/drawable/Drawable;

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

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$2;->this$1:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->notifyDataSetChanged()V
    invoke-static {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;Ljava/lang/String;)V

    return-void
.end method

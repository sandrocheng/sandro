.class public Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskManagerDataAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreNextReload:Z

.field private mImageLoaderService:Lsl;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLoadIconTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningProcessCleaner:Lzk;

.field final synthetic this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;Landroid/content/Context;Ljava/util/List;Lzo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;",
            ">;",
            "Lzo;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mIgnoreNextReload:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    iput-object p4, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mRunningProcessServer:Lzo;

    new-instance v0, Lsl;

    invoke-direct {v0}, Lsl;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mImageLoaderService:Lsl;

    new-instance v0, Lzk;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lzk;-><init>(Landroid/content/Context;Lzk$b;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mRunningProcessCleaner:Lzk;

    return-void
.end method

.method static synthetic access$400(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;)Lzk;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mRunningProcessCleaner:Lzk;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->removeIconTaskFromList(Ljava/lang/String;)V

    return-void
.end method

.method private iconLoadFinishCallBack(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->removeIconTaskFromList(Ljava/lang/String;)V

    return-void
.end method

.method private isLoadingIcon(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private removeIconTaskFromList(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private setImageIcon(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;)V
    .locals 4

    const v3, 0x1080093

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    iget-object v1, p2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mImageLoaderService:Lsl;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0, p2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->loadImages(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->this$0:Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;

    #getter for: Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->mDefaultDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;->access$500(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public closeApp(I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mCloseAble:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$1;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mIgnoreNextReload:Z

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;

    if-nez p2, :cond_0

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;

    invoke-direct {v2, p0, v4}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$1;)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03005d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0800f8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;->iv:Landroid/widget/ImageView;

    const v1, 0x7f0800f9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v3}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->setImageIcon(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;)V

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mCloseAble:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1
.end method

.method public isIgnoreNextReload(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mIgnoreNextReload:Z

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mIgnoreNextReload:Z

    :cond_0
    return v0
.end method

.method public loadImages(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;)V
    .locals 2

    iget-object v0, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->isLoadingIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Llv;

    invoke-direct {v0}, Llv;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Llv;->b:I

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lmp;->g:I

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llv;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Llv;->a:I

    iput-object p1, v0, Lmp;->h:Ljava/lang/Object;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$2;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter$2;-><init>(Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;)V

    iput-object v1, v0, Lmp;->i:Labu$a;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mImageLoaderService:Lsl;

    invoke-virtual {v1, v0}, Lsl;->b(Lmp;)Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mLoadIconTaskList:Ljava/util/List;

    iget-object v1, p1, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;->mAppInfo:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$RunningAppTask;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/view/deskassistance/ExpandedTaskManagerWindow$TaskManagerDataAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

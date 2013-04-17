.class public abstract Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;
    }
.end annotation


# static fields
.field public static final POSITION_NONE:I = -0x2

.field public static final POSITION_UNCHANGED:I = -0x1


# instance fields
.field private mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroyItem(Landroid/view/View;ILjava/lang/Object;)V
.end method

.method public abstract finishUpdate(Landroid/view/View;)V
.end method

.method public abstract getCount()I
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public abstract instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
.end method

.method public abstract isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

    invoke-interface {v0}, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;->onDataSetChanged()V

    :cond_0
    return-void
.end method

.method public abstract restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
.end method

.method public abstract saveState()Landroid/os/Parcelable;
.end method

.method setDataSetObserver(Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter;->mObserver:Lcom/tencent/qqpimsecure/uilib/viewpager/PagerAdapter$DataSetObserver;

    return-void
.end method

.method public abstract startUpdate(Landroid/view/View;)V
.end method
